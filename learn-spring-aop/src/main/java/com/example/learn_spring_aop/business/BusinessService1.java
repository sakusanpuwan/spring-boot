package com.example.learn_spring_aop.business;

import com.example.learn_spring_aop.data.DataService1;
import org.springframework.stereotype.Service;

import java.util.Arrays;

@Service
public class BusinessService1 {

    private DataService1 dataService1;

    public BusinessService1(DataService1 dataService1) {
        this.dataService1 = dataService1;
    }

    public int[] calculateMax() {
        int[] data =  dataService1.retrieveData();
        return new int[]{Arrays.stream(data).max().orElse(0)};
    }
}
