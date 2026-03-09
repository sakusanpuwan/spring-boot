package com.example.learn_spring_aop.aspects;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Configuration;

@Configuration
@Aspect
public class LoggingAspect {

    private Logger logger = LoggerFactory.getLogger(getClass());

    // Pointcut - intercepts method calls in package
    @Before("execution(* com.example.learn_spring_aop.business.*.*(..))")
    public void logMethodCall(JoinPoint joinPoint) {
        logger.info("Method {} called", joinPoint);
    }
}
