package com.example.learn_spring_aop.aspects;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Configuration;

@Aspect
@Configuration
public class PerformanceTrackingAspect {

    private Logger logger = LoggerFactory.getLogger(getClass());

    @Around("execution(* com.example.learn_spring_aop.*.*.* (..))")
    public Object findExecutionTime(ProceedingJoinPoint proceedingJoinPoint) throws Throwable {
        long start = System.currentTimeMillis();

        Object returnValue = proceedingJoinPoint.proceed();

        long end = System.currentTimeMillis();

        long duration = end - start;
        logger.info("Method:  {} Duration: {} ms", proceedingJoinPoint, duration);

        return returnValue;
    }
}
