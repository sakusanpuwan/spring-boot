package com.in28minutes.springboot.learn_jpa_and_hibernate.repository;

import com.in28minutes.springboot.learn_jpa_and_hibernate.model.Movie;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MovieRepository extends JpaRepository<Movie, Long> {

    // SELECT * FROM movies WHERE LOWER(MOVIE_NAME) LIKE LOWER('%keyword%');
    @Query("SELECT m FROM Movie m WHERE LOWER(m.name) LIKE LOWER(CONCAT('%', :keyword, '%'))")
    List<Movie> findByTitleContaining(@Param("keyword") String keyword);

    @Query("SELECT m from Movie m WHERE m.phase.id = :phaseId")
    List<Movie> findByPhase(@Param("phaseId") Long phaseId);

    @Query("SELECT m from Movie m WHERE m.boxOffice.worldwideBoxOffice BETWEEN :min AND :max")
    List<Movie> findByBoxOfficeBetween(@Param("min") Long min, @Param("max") Long max);

    @Query("SELECT m from Movie m WHERE m.boxOffice.worldwideBoxOffice >= :min")
    List<Movie> findByBoxOfficeGreaterThan(@Param("min") Long minBoxOfficeValue);

}
