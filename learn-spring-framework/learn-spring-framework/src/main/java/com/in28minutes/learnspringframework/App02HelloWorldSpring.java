package com.in28minutes.learnspringframework;


import org.springframework.context.annotation.AnnotationConfigApplicationContext;

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

        // Retrieve by Bean type
        // Note - Error - If multiple Beans of same type
//        System.out.println(context.getBean(Address.class));



    }
}
