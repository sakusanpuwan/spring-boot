package com.example.learn_web_app.login;

import org.springframework.stereotype.Service;

@Service
public class AuthenticationService {
    public boolean authenticate(String username, String password) {
        return "Sakusan".equalsIgnoreCase(username) && "password".equalsIgnoreCase(password);
    }
}
