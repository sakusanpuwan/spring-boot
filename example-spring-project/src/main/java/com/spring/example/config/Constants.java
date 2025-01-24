package com.spring.example.config;

public class Constants {

    private Constants(){}

    // Product status
    public static final String IN_STOCK = "In Stock";

    // Transaction status
    public static final String READY = "Ready";
    public static final String COMPLETED = "Completed";
    public static final String FAILED = "Failed";
    public static final String INSUFFICIENT_STOCK = "Insufficient Stock";

    // Transaction type
    public static final String ADD_STOCK = "ADD_STOCK";
    public static final String REMOVE_STOCK = "REMOVE_STOCK";


}
