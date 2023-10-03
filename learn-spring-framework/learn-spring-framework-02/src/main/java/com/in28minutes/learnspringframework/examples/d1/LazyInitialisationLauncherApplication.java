package com.in28minutes.learnspringframework.examples.d1;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Component;

@Component
class ClassA{

}

@Component
@Lazy
class ClassB{

    private ClassA classA;

    public ClassB(ClassA classA){
        System.out.println("Some Init logic");
        this.classA = classA;
    }

    public void doSomething(){
        System.out.println("Doing something");
    }
}

@Configuration
@ComponentScan
public class LazyInitialisationLauncherApplication {

    public static void main(String[] args) {

        var context = new AnnotationConfigApplicationContext(LazyInitialisationLauncherApplication.class);

        context.getBean(ClassB.class).doSomething();
    }
}

