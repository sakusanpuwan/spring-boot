package com.example.learn_spring_test.util;

import org.springframework.stereotype.Component;

@Component
public class NameUtil {
    public String formatName(String name) {
        if (name == null || name.isEmpty()) {
            return name;
        }
        return name.toUpperCase();
    }
}
