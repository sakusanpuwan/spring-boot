package com.in28minutes.springboot.learn_jpa_and_hibernate.service;

import com.in28minutes.springboot.learn_jpa_and_hibernate.DTO.CharacterDTO;
import com.in28minutes.springboot.learn_jpa_and_hibernate.exception.EntityNotFoundException;
import com.in28minutes.springboot.learn_jpa_and_hibernate.mapper.CharacterMapper;
import com.in28minutes.springboot.learn_jpa_and_hibernate.model.Character;
import com.in28minutes.springboot.learn_jpa_and_hibernate.repository.CharacterRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(readOnly = true)
public class CharacterService {

    private final CharacterRepository characterRepository;
    private final CharacterMapper characterMapper;

    public CharacterService(CharacterRepository characterRepository, CharacterMapper characterMapper) {
        this.characterRepository = characterRepository;
        this.characterMapper = characterMapper;
    }

    public List<CharacterDTO> getAllCharacters() {
        List<Character> characters = characterRepository.findAll();
        return characters.stream()
                .map(characterMapper::toDTO)
                .toList();
    }

    public CharacterDTO getCharacterById(Long id) {
        Character character = characterRepository.findById(id).orElseThrow(() -> new EntityNotFoundException("Character " + id + " is not found"));
        return characterMapper.toDTO(character);
    }

    public List<CharacterDTO> getCharactersByKeyword(String keyword) {
        List<Character> characters = characterRepository.findByNameContaining(keyword);
        if (characters.isEmpty()) {
            throw new EntityNotFoundException("Character with keyword: " + keyword + " not found");
        }
        return characters.stream().map(characterMapper::toDTO).toList();
    }

}
