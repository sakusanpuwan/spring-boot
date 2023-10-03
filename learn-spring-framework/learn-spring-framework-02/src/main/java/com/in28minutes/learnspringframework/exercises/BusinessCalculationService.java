package com.in28minutes.learnspringframework.exercises;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import java.util.Arrays;

@Component
public class BusinessCalculationService {

    // Constructor based injection
//    private DataService dataService;
//
//    public BusinessCalculationService(DataService dataService){
//        this.dataService = dataService;
//    }

    // Field based injection
    @Autowired
    DataService dataService;
    public int findMax() {
        return Arrays.stream(dataService.retrieveDate()).max().orElse(0);
    }
}
