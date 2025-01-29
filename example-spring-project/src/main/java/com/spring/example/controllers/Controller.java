package com.spring.example.controllers;

import com.spring.example.models.Product;
import com.spring.example.models.Supplier;
import com.spring.example.models.Transaction;
import com.spring.example.repositories.ProductRepository;
import com.spring.example.repositories.SupplierRepository;
import com.spring.example.repositories.TransactionRepository;
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

    @Autowired
    ProductRepository productRepository;

    @Autowired
    TransactionRepository transactionRepository;

    @GetMapping("/suppliers")
    public ResponseEntity<List<Supplier>> getSuppliers() {
        List<Supplier> suppliers = supplierRepository.findAll();
        return new ResponseEntity<>(suppliers, HttpStatus.OK);
    }

    @GetMapping("/products")
    public ResponseEntity<List<Product>> getProducts() {
        List<Product> products = productRepository.findAll();
        return new ResponseEntity<>(products, HttpStatus.OK);
    }

    @GetMapping("/transactions")
    public ResponseEntity<List<Transaction>> getTransactions() {
        List<Transaction> transactions = transactionRepository.findAll();
        return new ResponseEntity<>(transactions, HttpStatus.OK);
    }
}
