package com.rest.webservices.restful_web_services.customer;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class CustomerController {
    private final CustomerService customerService;

    public CustomerController(CustomerService customerService) {
        this.customerService = customerService;
    }

    @GetMapping("/customers/DTO")
    public List<CustomerDTO> getDTOCustomers() {
        return customerService.getAllDTOCustomers();
    }

    @GetMapping("/customers/all")
    public List<Customer> getCustomers() {
        return customerService.getAllCustomers();
    }
}
