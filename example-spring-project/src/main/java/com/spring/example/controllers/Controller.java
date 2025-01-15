package com.spring.example.controllers;

import com.spring.example.models.Supplier;
import com.spring.example.repositories.SupplierRepository;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@CrossOrigin
public class Controller {

    @Autowired
    SupplierRepository supplierRepository;

    @GetMapping("/suppliers")
    @Transactional
    public ResponseEntity<List<Supplier>> getSuppliers() {
        List<Supplier> suppliers = supplierRepository.findAll();
        return new ResponseEntity<>(suppliers, HttpStatus.OK);
    }
}
