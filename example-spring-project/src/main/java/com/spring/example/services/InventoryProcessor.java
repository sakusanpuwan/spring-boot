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

    @Autowired
    public InventoryProcessor(NewDataLoader newDataLoader){
        this.newDataLoader = newDataLoader;
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

        newDataLoader.loadData();
    }
}
