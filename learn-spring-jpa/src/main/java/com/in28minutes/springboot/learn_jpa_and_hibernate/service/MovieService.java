package com.in28minutes.springboot.learn_jpa_and_hibernate.service;

import com.in28minutes.springboot.learn_jpa_and_hibernate.DTO.MovieDTO;
import com.in28minutes.springboot.learn_jpa_and_hibernate.mapper.MovieMapper;
import com.in28minutes.springboot.learn_jpa_and_hibernate.model.Character;
import com.in28minutes.springboot.learn_jpa_and_hibernate.model.Movie;
import com.in28minutes.springboot.learn_jpa_and_hibernate.repository.CharacterRepository;
import com.in28minutes.springboot.learn_jpa_and_hibernate.repository.MovieRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
public class MovieService {

    private final MovieRepository movieRepository;
    private final MovieMapper movieMapper;
    private final CharacterRepository characterRepository;


    public MovieService (MovieRepository movieRepository, MovieMapper movieMapper, CharacterRepository characterRepository){
        this.movieRepository = movieRepository;
        this.movieMapper = movieMapper;
        this.characterRepository = characterRepository;
    }

    @Transactional(readOnly = true)
    public ArrayList<MovieDTO> getAllMovies() {
        List<Movie> movieList = movieRepository.findAll();
        ArrayList<MovieDTO> movieDTOArrayList = new ArrayList<>();
        for (Movie movie : movieList) {
//            List<Character> characters = movieRepository.findCharactersByMovieId(movie.getId());
            List<Character> characters = characterRepository.findByMovieId(movie.getId());
            System.out.println(characters.size());
            MovieDTO movieDTO = movieMapper.toDTO(movie, characters);
            movieDTOArrayList.add(movieDTO);
        }
        return movieDTOArrayList;
    }

}
