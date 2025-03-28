package com.in28minutes.springboot.learn_jpa_and_hibernate.mapper;

import com.in28minutes.springboot.learn_jpa_and_hibernate.DTO.CharacterDTO;
import com.in28minutes.springboot.learn_jpa_and_hibernate.DTO.MovieDTO;
import com.in28minutes.springboot.learn_jpa_and_hibernate.model.Character;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;

import java.util.List;

@Mapper(componentModel = "spring")
public interface CharacterMapper {

    @Mappings({
            @Mapping(source = "name", target = "name"),
            @Mapping(source = "actor", target = "actor"),
            @Mapping(expression = "java(mapMovies(character))", target = "movies")}
    )
    CharacterDTO toDTO(Character character);

    default List<MovieDTO> mapMovies(Character character) {
        return character.getMovies().stream()
                .map(movie -> MovieDTO.builder()
                        .name(movie.getName())
                        .releaseDate(movie.getReleaseDate())
                        .build()
                )
                .toList();
    }
}
