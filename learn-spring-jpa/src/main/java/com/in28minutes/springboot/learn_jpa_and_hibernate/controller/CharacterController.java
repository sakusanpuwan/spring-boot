package com.in28minutes.springboot.learn_jpa_and_hibernate.controller;

import com.in28minutes.springboot.learn_jpa_and_hibernate.DTO.MovieDTO;
import com.in28minutes.springboot.learn_jpa_and_hibernate.model.Character;
import com.in28minutes.springboot.learn_jpa_and_hibernate.repository.CharacterRepository;
import com.in28minutes.springboot.learn_jpa_and_hibernate.repository.MovieRepository;
import com.in28minutes.springboot.learn_jpa_and_hibernate.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class CharacterController {

    @Autowired
    private CharacterRepository characterRepository;

    @GetMapping("/characters")
    public ResponseEntity<List<Character>> getAllMovies(){
        List<Character> characters = characterRepository.findAll();
        return new ResponseEntity<>(characters, HttpStatus.OK);
    }
}
