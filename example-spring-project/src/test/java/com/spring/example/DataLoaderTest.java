package com.spring.example;

import ch.qos.logback.classic.Logger;
import ch.qos.logback.classic.spi.ILoggingEvent;
import ch.qos.logback.core.read.ListAppender;
import com.spring.example.models.Supplier;
import com.spring.example.repositories.ProductRepository;
import com.spring.example.repositories.SupplierRepository;
import com.spring.example.services.NewDataLoader;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;

import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.Mockito.*;

import org.mockito.junit.jupiter.MockitoExtension;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.Resource;
import org.springframework.test.util.ReflectionTestUtils;
import uk.org.lidalia.slf4jtest.TestLogger;
import uk.org.lidalia.slf4jtest.TestLoggerFactory;

import java.util.Optional;

@ExtendWith(MockitoExtension.class)
class DataLoaderTest {

	@Mock
    private SupplierRepository supplierRepository;

    @Mock
    private ProductRepository productRepository;

    @InjectMocks
    private NewDataLoader newDataLoader;

    private final TestLogger testLogger = TestLoggerFactory.getTestLogger(NewDataLoader.class);

    ListAppender<ILoggingEvent> appender;

    @BeforeEach
    public void setup(){
        // Set up a ListAppender to capture logs
        appender = new ListAppender<>();
        appender.start();

        // Get the logger for your class
        Logger logger = (Logger) LoggerFactory.getLogger(NewDataLoader.class);
        logger.addAppender(appender);
    }

    @Test
    void testLoadSupplierData_Success() {
        String supplierData = """
                Supplier1,supplier1@example.com,1234567890
                Supplier2,supplier2@example.com,9876543210
                """;
        Resource mockResource = new ByteArrayResource(supplierData.getBytes());

        ReflectionTestUtils.setField(newDataLoader, "supplierDataPath", mockResource);

        when(supplierRepository.findByName(anyString())).thenReturn(Optional.empty());

        newDataLoader.loadSupplierData();

        verify(supplierRepository, times(2)).save(any(Supplier.class));

        assertTrue(
                appender.list.stream()
                        .anyMatch(event -> event.getFormattedMessage().contains("New supplier has been added: Supplier1")),
                "Expected log message was not found."
        );
    }


}
