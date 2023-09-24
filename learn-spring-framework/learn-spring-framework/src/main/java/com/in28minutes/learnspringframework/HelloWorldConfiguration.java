package com.in28minutes.learnspringframework;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

// Record eliminates overwordiness in creating Java Beans
// Public accessor methods, constructor are auto created
// Released in JDK 16
record Person (String name, int age, Address address) {}
record Address(String firstLine, String city) {}
@Configuration
public class HelloWorldConfiguration {

    @Bean(name = "name")
    public String name() {
        return "Sakusan";
    }

    @Bean
    public int age() {
        return 25;
    }

    @Bean
    public Person person() {
        var address = new Address("Wayne Manor","Gotham");
        var person = new Person("Bruce Wayne",32,address);
        return person;
    }

    @Bean
    public Person person2ByMethodCall() {
        var person = new Person(name(),age(),address()); // Calls Bean methods directly
        return person;
    }

    @Bean
    public Person person3ByParameters(String name, int age, Address address) {
        var person = new Person(name,age,address); // Injects/Autowires Beans as parameters
        return person;
    }

    @Bean
    public Address address(){
        var address = new Address("221B Baker St.","London");
        return address;
    }

}
