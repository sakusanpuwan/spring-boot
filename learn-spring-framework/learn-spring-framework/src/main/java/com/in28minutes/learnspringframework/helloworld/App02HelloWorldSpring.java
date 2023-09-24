package com.in28minutes.learnspringframework.helloworld;


import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import java.util.Arrays;

public class App02HelloWorldSpring {
    public static void main(String[] args) {

        // JVM -> Spring -> name|age|person|address

        // 1. Launch a Spring Context

        var context = new AnnotationConfigApplicationContext(HelloWorldConfiguration.class);

        // 2. Configure what Spring manages
        // @Configuration in HelloWorldConfiguration
        // With @Bean name

        // 3. Retrieve Beans managed by Spring

        // Retrieve by Bean name
        System.out.println(context.getBean("name"));
        System.out.println(context.getBean("age"));
        System.out.println(context.getBean("person"));
        System.out.println(context.getBean("address"));

        System.out.println(context.getBean("person2ByMethodCall"));

        System.out.println(context.getBean("person4ByQualifier"));

        // Retrieve by Bean type
        // Note - Error - If multiple Beans of same type | Use @Primary to define priority
        System.out.println(context.getBean(Person.class));


        // Retrieving Bean Details
        Arrays.stream(context.getBeanDefinitionNames()).forEach(System.out::println);
        System.out.println(context.getBeanDefinitionCount());

    }
}
