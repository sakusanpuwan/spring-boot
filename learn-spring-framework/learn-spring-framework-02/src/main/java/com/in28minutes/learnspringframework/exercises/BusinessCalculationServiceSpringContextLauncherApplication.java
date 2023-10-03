package com.in28minutes.learnspringframework.exercises;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

import java.util.Arrays;


@Configuration
@ComponentScan("com.in28minutes.learnspringframework.exercises")
public class BusinessCalculationServiceSpringContextLauncherApplication {

    public static void main(String[] args) {


        try (var context =
                     new AnnotationConfigApplicationContext(BusinessCalculationServiceSpringContextLauncherApplication.class)){
            System.out.println(context.getBean(BusinessCalculationService.class).findMax());
        }

    }
}

