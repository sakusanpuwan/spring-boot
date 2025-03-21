package com.in28minutes.springboot.learn_jpa_and_hibernate.mapper;

import com.in28minutes.springboot.learn_jpa_and_hibernate.DTO.CharacterDTO;
import com.in28minutes.springboot.learn_jpa_and_hibernate.DTO.MovieDTO;
import com.in28minutes.springboot.learn_jpa_and_hibernate.model.Character;
import com.in28minutes.springboot.learn_jpa_and_hibernate.model.Movie;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;

@Mapper(componentModel = "spring")
public interface CharacterMapper {

    @Mappings({
            @Mapping(source = "name", target = "name")
    })
    CharacterDTO toDTO(Character character);
}
