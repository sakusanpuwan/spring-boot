package com.spring.example.services;

import com.spring.example.models.Product;
import com.spring.example.models.Transaction;
import com.spring.example.repositories.ProductRepository;
import com.spring.example.repositories.TransactionRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

import static com.spring.example.config.Constants.ADD_STOCK;

@Component
public class TransactionProcessor {

    private static final Logger logger = LoggerFactory.getLogger(TransactionProcessor.class);
    private final TransactionRepository transactionRepository;
    private final ProductRepository productRepository;

    @Autowired
    public TransactionProcessor(TransactionRepository transactionRepository, ProductRepository productRepository) {
        this.transactionRepository = transactionRepository;
        this.productRepository = productRepository;
    }

    public void processActiveTransactions() {
        try {
            List<Transaction> transactions = transactionRepository.findActiveTransactions();
            if (transactions.isEmpty()) {
                logger.info("No transactions to process");
                return;
            }

            for (Transaction transaction : transactions) {
                try {
                    Product product = Optional.ofNullable(transaction.getProduct())
                            .orElseThrow(() -> new IllegalArgumentException("Product listed in transaction is not present in database"));
                    int signMultiplier = transaction.getTransactionType().equals(ADD_STOCK) ? 1 : -1;
                    int newQuantity = product.getQuantity() + (signMultiplier * transaction.getQuantity());
                    if (newQuantity < 0) {
                        transaction.setStatus("Insufficient");
                        logger.info("Insufficient quantity of product {} to perform transaction {}", product.getName(), transaction.getId());
                    } else {
                        product.setQuantity(newQuantity);
                        product.setLastUpdatedDate(LocalDateTime.now());
                        productRepository.save(product);
                        transaction.setStatus("Completed");
                        logger.info("Transaction {} performed successfully", transaction.getId());
                    }
                } catch (Exception e) {
                    transaction.setStatus("Failed");
                    logger.error("Error whilst processing transaction {} : {}", transaction.getId(), e.getMessage());
                } finally {
                    transaction.setTransactionDate(LocalDateTime.now());
                    transactionRepository.save(transaction);
                }
            }
        } catch (Exception e) {
            logger.error("Error whilst processing transactions: {}", e.getMessage());
        }
    }
}
