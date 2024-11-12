package com.example.learn_spring_test.util;

import com.example.learn_spring_test.model.User;
import org.springframework.stereotype.Component;

@Component
public class ExternalApiClient {

    public void notifyUserCreation(User user) {
        // Calls an external API
    }
}