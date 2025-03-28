package com.in28minutes.springboot.learn_jpa_and_hibernate.mapper;

import com.in28minutes.springboot.learn_jpa_and_hibernate.DTO.CharacterDTO;
import com.in28minutes.springboot.learn_jpa_and_hibernate.model.Character;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;

@Mapper(componentModel = "spring")
public interface CharacterMapper {

    @Mappings({
            @Mapping(source = "name", target = "name"),
            @Mapping(source = "actor", target = "actor")
    })
    CharacterDTO toDTO(Character character);
}
