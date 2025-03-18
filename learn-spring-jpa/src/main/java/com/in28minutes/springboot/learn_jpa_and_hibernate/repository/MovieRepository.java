package com.in28minutes.springboot.learn_jpa_and_hibernate.repository;

import com.in28minutes.springboot.learn_jpa_and_hibernate.model.Movie;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MovieRepository extends JpaRepository<Movie, Long> {

}
