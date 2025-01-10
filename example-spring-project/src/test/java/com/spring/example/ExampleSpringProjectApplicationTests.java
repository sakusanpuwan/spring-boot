package com.spring.example;

import com.spring.example.models.Supplier;
import com.spring.example.repositories.SupplierRepository;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
class ExampleSpringProjectApplicationTests {

	@Autowired
	SupplierRepository supplierRepository;

	@Test
	void getSuppliersData() {
		List<Supplier> suppliers = supplierRepository.findAll();
		Assertions.assertNotNull(suppliers);
	}

}
