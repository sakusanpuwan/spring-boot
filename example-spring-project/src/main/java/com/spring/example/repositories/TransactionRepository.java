package com.spring.example.repositories;

import com.spring.example.models.Transaction;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TransactionRepository extends JpaRepository<Transaction, Long> {

    @Query(value = "SELECT * FROM TRANSACTION WHERE STATUS IN ('Ready', 'Failed', 'Insufficient stock')", nativeQuery = true)
    List<Transaction> findActiveTransactions();
}
