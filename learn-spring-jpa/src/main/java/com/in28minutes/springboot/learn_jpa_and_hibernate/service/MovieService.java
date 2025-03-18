package com.in28minutes.springboot.learn_jpa_and_hibernate.service;

import com.in28minutes.springboot.learn_jpa_and_hibernate.DTO.MovieDTO;
import com.in28minutes.springboot.learn_jpa_and_hibernate.DTO.PhaseDTO;
import com.in28minutes.springboot.learn_jpa_and_hibernate.controller.MovieController;
import com.in28minutes.springboot.learn_jpa_and_hibernate.mapper.MovieMapper;
import com.in28minutes.springboot.learn_jpa_and_hibernate.model.Movie;
import com.in28minutes.springboot.learn_jpa_and_hibernate.repository.MovieRepository;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class MovieService {

    private final MovieRepository movieRepository;
    private final MovieMapper movieMapper;

    public MovieService (MovieRepository movieRepository, MovieMapper movieMapper){
        this.movieRepository = movieRepository;
        this.movieMapper = movieMapper;

    }

    public ArrayList<MovieDTO> getAllMovies() {
        List<Movie> movieList = movieRepository.findAll();
        ArrayList<MovieDTO> movieDTOArrayList = new ArrayList<>();
        for (Movie movie : movieList) {
            MovieDTO movieDTO = movieMapper.toDTO(movie);
            movieDTOArrayList.add(movieDTO);
        }
        return movieDTOArrayList;
    }

}
