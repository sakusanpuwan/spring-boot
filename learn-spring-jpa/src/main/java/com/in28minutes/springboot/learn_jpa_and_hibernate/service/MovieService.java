package com.in28minutes.springboot.learn_jpa_and_hibernate.service;

import com.in28minutes.springboot.learn_jpa_and_hibernate.DTO.MovieDTO;
import com.in28minutes.springboot.learn_jpa_and_hibernate.exception.MovieNotFoundException;
import com.in28minutes.springboot.learn_jpa_and_hibernate.mapper.MovieMapper;
import com.in28minutes.springboot.learn_jpa_and_hibernate.model.Movie;
import com.in28minutes.springboot.learn_jpa_and_hibernate.repository.MovieRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class MovieService {

    private final MovieRepository movieRepository;
    private final MovieMapper movieMapper;

    public MovieService(MovieRepository movieRepository, MovieMapper movieMapper) {
        this.movieRepository = movieRepository;
        this.movieMapper = movieMapper;
    }

    @Transactional(readOnly = true)
    public List<MovieDTO> getAllMovies() {
        List<Movie> movieList = movieRepository.findAll();
        return movieList.stream().map(movieMapper::toDTO).toList();
    }

    @Transactional(readOnly = true)
    public MovieDTO getMovieById(Long id) {
        Movie movie = movieRepository.findById(id)
                .orElseThrow(() -> new MovieNotFoundException(id));
        return movieMapper.toDTO(movie);
    }

    @Transactional(readOnly = true)
    public List<MovieDTO> getMoviesByKeyword(String keyword) {
        List<Movie> movies = movieRepository.findByTitleContaining(keyword)
                .orElseThrow(() -> new MovieNotFoundException("Movie with keyword: " + keyword + " not found"));
        return movies.stream().map(movieMapper::toDTO).toList();
    }

}
