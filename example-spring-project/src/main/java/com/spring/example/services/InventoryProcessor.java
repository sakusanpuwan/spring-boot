package com.spring.example.services;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

@Component
public class InventoryProcessor implements CommandLineRunner {

    private static final Logger logger = LoggerFactory.getLogger(InventoryProcessor.class);

    private final SupplierProductDataLoader supplierProductDataLoader;

    @Autowired
    public InventoryProcessor(SupplierProductDataLoader supplierProductDataLoader){
        this.supplierProductDataLoader = supplierProductDataLoader;
    }

    @Override
    public void run(String... args) throws Exception {
        logger.info("Application has started");
        /*
        Load new supplier and product details
            newDataLoader
            loadDate(filePath)
            if fileName = product -> load product
            if fileName = supplier -> load supplier
         */

        supplierProductDataLoader.loadData();
    }
}
