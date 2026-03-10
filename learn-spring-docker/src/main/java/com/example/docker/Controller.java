package com.example.docker;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {

    @GetMapping(path = "/")
    public String helloWorld() {
        return "{\"message\": \"Hello World\"}";
    }
}
