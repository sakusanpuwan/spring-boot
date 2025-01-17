package com.spring.example.services;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

@Component
public class InventoryProcessor implements CommandLineRunner {

    private static final Logger logger = LoggerFactory.getLogger(InventoryProcessor.class);

    @Override
    public void run(String... args) throws Exception {
        logger.info("Application has started");
    }
}
