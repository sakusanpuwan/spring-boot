# Aspect Orientated Programming
AOP is a programming paradigm that allows you to separate cross-cutting concerns from the main business logic of your application. It provides a way to modularize aspects of your application that cut across multiple classes or modules, such as logging, security, and transaction management.

To build applications, you typically write code in a layered architecture such as:

- Presentation Layer: Handles user interface and user interactions.
- Business Logic Layer: Contains the core functionality and business rules of the application.
- Data Access Layer: Manages interactions with the database or other data sources.

Each layer has different responsibilities, but they all share common cross-cutting concerns. These are common aspects of the application that affect multiple layers, such as logging, security, and transaction management.

AOP allows you to define these cross-cutting concerns in a modular way, separate from the main business logic. This makes your code cleaner, more maintainable, and easier to test.

AOP Flow:
1. Define an Aspect: An aspect is a modularization of a concern that cuts across multiple classes. It is defined using the `@Aspect` annotation in Spring.
2. Define a Pointcut: A pointcut is a predicate (a function or expression that returns true or false) that matches join points (points in the execution of the program, such as method calls). It is defined using the `@Pointcut` annotation.
3. Define Advice: Advice is the action taken at a particular join point. It can be defined using annotations such as `@Before`, `@After`, `@Around`, etc.
4. Weave the Aspect: The process of applying the aspect to the target objects is called weaving. Spring AOP uses runtime weaving, which means that the aspects are applied to the target objects at runtime.  

At runtime, when a pointcut condition is true, the respective advice is executed. A specific execution instance of advice is called a Join Point. 

```java
@Configuration
@Aspect
public class LoggingAspect {

    // Defines a pointcut that matches all methods in the com.example.service package
    @Before("execution(* com.example.service.*.*(..))") // WHERE to apply the advice
    public void logBefore(JoinPoint joinPoint) { 
        System.out.println("Logging before method: " + joinPoint.getSignature().getName()); // WHAT the advice does
    }
}
```
In this example, we define a logging aspect that logs a message before the execution of any method in the `com.example.service` package. The `@Before` annotation indicates that the advice should be executed before the matched method is called. The `execution(* com.example.service.*.*(..))` pointcut expression matches any method in the specified package.

`@Before` - The advice is executed before the matched method is called.

`@After` - The advice is executed after the matched method has completed, regardless of its outcome (whether it returns normally or throws an exception).

`@AfterReturning` - The advice is executed after the matched method returns successfully (i.e., it does not throw an exception).

`@AfterThrowing` - The advice is executed if the matched method throws an exception.

`@Around` - The advice wraps the matched method, allowing you to perform actions both before and after the method execution. You can also control whether the method is executed at all.

```java
    @Around("execution(* com.example.learn_spring_aop.*.*.* (..))")
    public Object findExecutionTime(ProceedingJoinPoint proceedingJoinPoint) throws Throwable {
        long start = System.currentTimeMillis();

        Object returnValue = proceedingJoinPoint.proceed();

        long end = System.currentTimeMillis();

        long duration = end - start;
        logger.info("Method:  {} Duration: {} ms", proceedingJoinPoint, duration);

        return returnValue;
    }
```

The `@Around` annotation allows us to execute code before and after the matched method. We use `proceedingJoinPoint.proceed()` to execute the original method and capture its return value. After the method execution, we calculate the duration and log it before returning the original return value.
