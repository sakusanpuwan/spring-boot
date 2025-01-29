package com.spring.example;

import ch.qos.logback.classic.Logger;
import ch.qos.logback.classic.spi.ILoggingEvent;
import ch.qos.logback.core.read.ListAppender;
import com.spring.example.models.Product;
import com.spring.example.models.Transaction;
import com.spring.example.repositories.ProductRepository;
import com.spring.example.repositories.TransactionRepository;
import com.spring.example.services.TransactionProcessor;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import uk.org.lidalia.slf4jtest.TestLogger;
import uk.org.lidalia.slf4jtest.TestLoggerFactory;

import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

@DataJpaTest  // Loads only JPA-related components (H2 database)
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.ANY) // Use in-memory H2
class TransactionProcessorTest {

    private final TestLogger testLogger = TestLoggerFactory.getTestLogger(TransactionProcessor.class);

    ListAppender<ILoggingEvent> appender;

    @Autowired
    TransactionRepository transactionRepository;

    @Autowired
    ProductRepository productRepository;

    TransactionProcessor transactionProcessor;

    @BeforeEach
    public void setup() {
        // Set up a ListAppender to capture logs
        appender = new ListAppender<>();
        appender.start();

        // Get the logger for your class
        Logger logger = (Logger) LoggerFactory.getLogger(TransactionProcessor.class);
        logger.addAppender(appender);

        transactionProcessor = new TransactionProcessor(transactionRepository, productRepository);
    }

    @Test
    void processActiveTransaction_Success() {
        transactionProcessor.processActiveTransactions();
        List<Transaction> transactions = transactionRepository.findAll();
        List<Product> products = productRepository.findAll();

        Product product = products.getFirst();

        Transaction transaction2 = transactions.get(1);
        Transaction transaction3 = transactions.get(2);
        Transaction transaction4 = transactions.get(3);

        assertEquals("Completed", transaction2.getStatus());
        assertEquals("Completed", transaction3.getStatus());
        assertEquals("Insufficient", transaction4.getStatus());
        assertEquals(99, product.getQuantity());

        assertTrue(
                appender.list.stream()
                        .anyMatch(event -> event.getFormattedMessage().contains("Transaction 2 performed successfully")),
                "Expected log message was not found."
        );

        assertTrue(
                appender.list.stream()
                        .anyMatch(event -> event.getFormattedMessage().contains("Transaction 3 performed successfully")),
                "Expected log message was not found."
        );

        assertTrue(
                appender.list.stream()
                        .anyMatch(event -> event.getFormattedMessage().contains("Insufficient quantity of product")),
                "Expected log message was not found."
        );

    }


}
