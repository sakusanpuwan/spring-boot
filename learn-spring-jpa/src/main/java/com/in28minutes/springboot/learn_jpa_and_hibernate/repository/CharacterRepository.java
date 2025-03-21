package com.in28minutes.springboot.learn_jpa_and_hibernate.repository;

import com.in28minutes.springboot.learn_jpa_and_hibernate.model.BoxOffice;
import com.in28minutes.springboot.learn_jpa_and_hibernate.model.Character;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CharacterRepository extends JpaRepository<Character, Long> {

    @Query("SELECT c FROM Character c WHERE c.movieId = :movieId")
    List<Character> findByMovieId(@Param("movieId") Long movieId);
}
