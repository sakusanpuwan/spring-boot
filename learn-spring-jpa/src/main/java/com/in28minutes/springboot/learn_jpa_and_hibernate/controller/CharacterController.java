package com.in28minutes.springboot.learn_jpa_and_hibernate.controller;

import com.in28minutes.springboot.learn_jpa_and_hibernate.DTO.CharacterDTO;
import com.in28minutes.springboot.learn_jpa_and_hibernate.service.CharacterService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/characters")
public class CharacterController {

    private final CharacterService characterService;

    public CharacterController(CharacterService characterService) {
        this.characterService = characterService;
    }

    @GetMapping()
    public ResponseEntity<List<CharacterDTO>> getAllCharacters() {
        List<CharacterDTO> characters = characterService.getAllCharacters();
        return new ResponseEntity<>(characters, HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<CharacterDTO> getCharacterById(@PathVariable Long id) {
        CharacterDTO characterDTO = characterService.getCharacterById(id);
        return new ResponseEntity<>(characterDTO, HttpStatus.OK);
    }

    @GetMapping("/search")
    public ResponseEntity<List<CharacterDTO>> getCharactersByKeyword(@RequestParam String keyword) {
        List<CharacterDTO> characters = characterService.getCharactersByKeyword(keyword);
        return new ResponseEntity<>(characters, HttpStatus.OK);
    }
}
