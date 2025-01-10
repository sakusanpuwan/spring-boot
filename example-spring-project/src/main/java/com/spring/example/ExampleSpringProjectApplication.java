package com.spring.example;

import com.spring.example.models.Supplier;
import com.spring.example.repositories.SupplierRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class ExampleSpringProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(ExampleSpringProjectApplication.class, args);
	}
}
