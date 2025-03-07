package com.rest.webservices.restful_web_services.customer;

import com.rest.webservices.restful_web_services.user.User;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Service
public class CustomerService {
    private static final List<Customer> customers = new ArrayList<>();

    static {
        customers.add(new Customer("Adam", 30, "password", 1));
        customers.add(new Customer("Ben", 25, "password", 2));
        customers.add(new Customer("Eve", 26, "password", 3));
    }

    // Maps customer to customerDTO without exposing sensitive info
    public List<CustomerDTO> getAllDTOCustomers() {
        return customers.stream()
                .map(customer -> new CustomerDTO(customer.getName(), customer.getAge()))
                .toList();
    }

    public List<Customer> getAllCustomers() {
        return customers;
    }

}
