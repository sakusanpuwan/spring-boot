package com.spring.example.services;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

@Component
public class InventoryProcessor implements CommandLineRunner {

    private static final Logger logger = LoggerFactory.getLogger(InventoryProcessor.class);

    private final NewDataLoader newDataLoader;

    private final TransactionProcessor transactionProcessor;

    @Autowired
    public InventoryProcessor(NewDataLoader newDataLoader, TransactionProcessor transactionProcessor){
        this.newDataLoader = newDataLoader;
        this.transactionProcessor = transactionProcessor;
    }

    @Override
    public void run(String... args) throws Exception {
        logger.info("Application has started");
        newDataLoader.loadSupplierData();
        newDataLoader.loadProductData();
        newDataLoader.updateProductQuantity();
        transactionProcessor.processActiveTransactions();

    }

}
