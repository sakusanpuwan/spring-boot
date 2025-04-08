package com.in28minutes.springboot.learn_jpa_and_hibernate.service;

import com.in28minutes.springboot.learn_jpa_and_hibernate.DTO.MovieDTO;
import com.in28minutes.springboot.learn_jpa_and_hibernate.exception.EntityNotFoundException;
import com.in28minutes.springboot.learn_jpa_and_hibernate.mapper.MovieMapper;
import com.in28minutes.springboot.learn_jpa_and_hibernate.model.Movie;
import com.in28minutes.springboot.learn_jpa_and_hibernate.repository.MovieRepository;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(readOnly = true)
public class MovieService {

    private final MovieRepository movieRepository;
    private final MovieMapper movieMapper;

    public MovieService(MovieRepository movieRepository, MovieMapper movieMapper) {
        this.movieRepository = movieRepository;
        this.movieMapper = movieMapper;
    }

    public List<MovieDTO> getAllMovies() {
        List<Movie> movieList = movieRepository.findAll();
        return movieList.stream().map(movieMapper::toDTO).toList();
    }

    public MovieDTO getMovieById(Long id) {
        Movie movie = movieRepository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException("Movie " + id + " is not found"));
        return movieMapper.toFullDTO(movie);
    }

    public List<MovieDTO> getMoviesByKeyword(String keyword) {
        List<Movie> movies = movieRepository.findByTitleContaining(keyword);
        if (movies.isEmpty()) {
            throw new EntityNotFoundException("Movies with keyword: " + keyword + " not found");
        }
        return movies.stream().map(movieMapper::toDTO).toList();
    }

    public List<MovieDTO> getMoviesByPhase(Long phaseId) {
        List<Movie> movies = movieRepository.findByPhase(phaseId);
        if (movies.isEmpty()) {
            throw new EntityNotFoundException("Movies with phaseId: " + phaseId + " not found");
        }
        return movies.stream().map(movieMapper::toDTO).toList();
    }

    public List<MovieDTO> getMoviesByBoxOfficeBetween(Long min, Long max) {
        List<Movie> movies = movieRepository.findByBoxOfficeBetween(min, max);
        if (movies.isEmpty()) {
            throw new EntityNotFoundException("Movies with boxOffice between " + min + " and " + max + " not found");
        }
        return movies.stream().map(movieMapper::toDTO).toList();
    }

    public List<MovieDTO> getMoviesByBoxOfficeGreaterThan(Long min) {
        List<Movie> movies = movieRepository.findByBoxOfficeGreaterThan(min);
        if (movies.isEmpty()) {
            throw new EntityNotFoundException("Movies with boxOffice greater than " + min + " not found");
        }
        return movies.stream().map(movieMapper::toDTO).toList();
    }

    public List<MovieDTO> getMoviesByYear(int year) {
        List<Movie> movies = movieRepository.findMoviesByYear(year);
        if (movies.isEmpty()) {
            throw new EntityNotFoundException("Movies from year " + year + " not found");
        }
        return movies.stream().map(movieMapper::toDTO).toList();
    }

    // Method for combined filtering
    public List<MovieDTO> getMoviesByCombinedFiltering(Integer year, String keyword, Long minBoxOffice, Long maxBoxOffice, Long phaseId) {

        // Build the specification by combining individual criteria using 'and'
        Specification<Movie> spec = Specification
                .where(MovieSpecification.releasedInYear(year)) // Start with where()
                .and(MovieSpecification.hasKeyword(keyword)) // If null then criteriaBuilder.conjunction() returns a Predicate representing TRUE, skipping filtering
                .and(MovieSpecification.hasBoxOfficeBetween(minBoxOffice, maxBoxOffice))
                .and(MovieSpecification.belongsToPhase(phaseId));

        List<Movie> movies = movieRepository.findAll(spec); // Execute the specification

         if (movies.isEmpty()) {
             throw new EntityNotFoundException("No movies found matching the criteria.");
         }

        return movies.stream().map(movieMapper::toDTO).toList();
    }

}
