package com.in28minutes.learnspringframework.examples.a1;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

@Component
class YourBusinessClass{

    // @Autowired Field based dependency injection
    Dependency1 dependency1;
    // @Autowired Field based dependency injection
    Dependency2 dependency2;

    // Setter based dependency injection
    public void setDependency1(Dependency1 dependency1) {
        this.dependency1 = dependency1;
    }

    // Setter based dependency injection
    public void setDependency2(Dependency2 dependency2) {
        this.dependency2 = dependency2;
    }

    // Constructor based dependency injection
    public YourBusinessClass(Dependency1 dependency1, Dependency2 dependency2) {
        this.dependency1 = dependency1;
        this.dependency2 = dependency2;
    }

    public String toString(){
        return "Using " + dependency1 + " " + dependency2;
    }
}
@Component
class Dependency1{

}
@Component
class Dependency2{

}
@Configuration
@ComponentScan("com.in28minutes.learnspringframework.examples.a1")
public class DepInjectionLauncherApplication {

    public static void main(String[] args) {

        var context = new AnnotationConfigApplicationContext(DepInjectionLauncherApplication.class);

    }
}


