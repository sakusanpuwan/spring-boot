package com.in28minutes.springboot.learn_jpa_and_hibernate.controller;

import com.in28minutes.springboot.learn_jpa_and_hibernate.DTO.MovieDTO;
import com.in28minutes.springboot.learn_jpa_and_hibernate.repository.MovieRepository;
import com.in28minutes.springboot.learn_jpa_and_hibernate.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/movies")
public class MovieController {

    private final MovieService movieService;

    @Autowired
    private MovieRepository movieRepository;


    public MovieController(MovieService movieService) {
        this.movieService = movieService;
    }

    @GetMapping()
    public ResponseEntity<List<MovieDTO>> getAllMovies() {
        List<MovieDTO> movies = movieService.getAllMovies();
        return new ResponseEntity<>(movies, HttpStatus.OK);
    }

    @GetMapping(path = "/{id}")
    public ResponseEntity<MovieDTO> getMovieById(@PathVariable Long id) {
        MovieDTO movieDTO = movieService.getMovieById(id);
        return new ResponseEntity<>(movieDTO, HttpStatus.OK);
    }

    @GetMapping(path = "/search")
    public ResponseEntity<List<MovieDTO>> getMoviesByKeyword(@RequestParam String keyword) {
        List<MovieDTO> movies = movieService.getMoviesByKeyword(keyword);
        return new ResponseEntity<>(movies, HttpStatus.OK);
    }

    @GetMapping(path = "/phase/{phaseId}")
    public ResponseEntity<List<MovieDTO>> getMoviesByPhase(@PathVariable Long phaseId) {
        List<MovieDTO> movies = movieService.getMoviesByPhase(phaseId);
        return new ResponseEntity<>(movies, HttpStatus.OK);
    }

    @GetMapping(path = "/boxOffice-range")
    public ResponseEntity<List<MovieDTO>> getMoviesByBoxOfficeBetween(@RequestParam(defaultValue = "0") Long min, @RequestParam(required = false) Long max) {
        List<MovieDTO> movies;
        if (max == null && min != null) {
            movies = movieService.getMoviesByBoxOfficeGreaterThan(min);
        } else if (max != null && min != null) {
            movies = movieService.getMoviesByBoxOfficeBetween(min, max);
        } else {
            movies = movieService.getAllMovies();
        }
        return new ResponseEntity<>(movies, HttpStatus.OK);
    }
}
