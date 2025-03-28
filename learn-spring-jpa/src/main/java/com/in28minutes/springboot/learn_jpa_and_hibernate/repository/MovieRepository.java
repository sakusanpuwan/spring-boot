package com.in28minutes.springboot.learn_jpa_and_hibernate.repository;

import com.in28minutes.springboot.learn_jpa_and_hibernate.model.Movie;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MovieRepository extends JpaRepository<Movie, Long> {

    /*
    findAll()
    SELECT m.movie_id, m.movie_name, m.release_date, m.movie_duration,
       m.director, m.writer, m.producer, m.status, m.phase_id
    FROM movies m;

    movie.getCharacters()
    SELECT c.id, c.movie_id, c.movie, c.character_id, c.character_name, c.actor
    FROM characters c
    WHERE c.movie_id = ?;

    ------
    @EntityGraph
    findAll()
    SELECT m.movie_id, m.movie_name, m.release_date, m.movie_duration,
       m.director, m.writer, m.producer, m.status, m.phase_id,
       c.id AS character_id, c.movie_id, c.movie, c.character_id, c.character_name, c.actor
    FROM movies m
    LEFT JOIN characters c ON m.movie_id = c.movie_id;
     */

    @EntityGraph(attributePaths = {"characters"}) // characters list fetched eagerly along with movies in JOIN FETCH
    @Query("SELECT m FROM Movie m")
    List<Movie> findAllMovies();
}
