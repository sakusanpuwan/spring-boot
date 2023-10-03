package com.in28minutes.learnspringframework.exercises;

import org.springframework.stereotype.Component;

@Component
public class MySQLDataService implements DataService{
    @Override
    public int[] retrieveDate() {
        return new int[] {1,2,3,4,5};
    }
}
