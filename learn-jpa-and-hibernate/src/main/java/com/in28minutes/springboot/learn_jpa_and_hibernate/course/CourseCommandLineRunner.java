package com.in28minutes.springboot.learn_jpa_and_hibernate.course;

import com.in28minutes.springboot.learn_jpa_and_hibernate.course.jdbc.CourseJdbcRepository;
import com.in28minutes.springboot.learn_jpa_and_hibernate.course.jpa.CourseJpaRepository;
import com.in28minutes.springboot.learn_jpa_and_hibernate.course.springdatajpa.CourseSpringDataJpaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

@Component
public class CourseCommandLineRunner implements CommandLineRunner {

    @Autowired
    private CourseJdbcRepository jdbcRepository;

    @Autowired
    private CourseJpaRepository jpaRepository;

    @Autowired
    private CourseSpringDataJpaRepository springDataJpaRepository;

    @Override
    public void run(String... args) throws Exception {
        jdbcRepository.insert();
        jdbcRepository.insertWithParam(new Course(2,"Learn Docker","in28minutes"));
        System.out.println(jdbcRepository.findById(2));

        jpaRepository.insert(new Course(3,"Learn Azure","in28minutes"));
        System.out.println(jpaRepository.findById(3));

        springDataJpaRepository.save((new Course(4,"Learn JavaScript","in28minutes")));
        springDataJpaRepository.save((new Course(5,"Learn Jenkins","in28minutes")));
        springDataJpaRepository.deleteById(4l);
        System.out.println(springDataJpaRepository.findById(5l));

        System.out.println(springDataJpaRepository.findByAuthor("in28minutes"));
        System.out.println(springDataJpaRepository.findByName("Learn Azure"));
    }
}
