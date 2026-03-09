package com.example.learn_spring_aop.data;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

@Repository
public class DataService1 {
    public int[] retrieveData() {
        return new int[] {1,2,3,4};
    }
}
