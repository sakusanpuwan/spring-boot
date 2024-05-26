package com.in28minures.springboot.learnspringboot;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;

@RestController
public class DatabaseController {

    @Autowired
    private DatabaseConfiguration databaseConfiguration;

    @RequestMapping("/database")
    public DatabaseConfiguration retrieveDatabaseConfig(){
        return databaseConfiguration;
    }

}
