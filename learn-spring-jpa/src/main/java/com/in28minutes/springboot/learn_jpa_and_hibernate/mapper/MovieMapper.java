package com.in28minutes.springboot.learn_jpa_and_hibernate.mapper;

import com.in28minutes.springboot.learn_jpa_and_hibernate.DTO.CharacterDTO;
import com.in28minutes.springboot.learn_jpa_and_hibernate.DTO.MovieDTO;
import com.in28minutes.springboot.learn_jpa_and_hibernate.model.Character;
import com.in28minutes.springboot.learn_jpa_and_hibernate.model.Movie;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;
import org.mapstruct.factory.Mappers;

import java.util.List;
import java.util.stream.Collectors;

@Mapper(componentModel = "spring", uses = CharacterMapper.class) // Adds CharacterMapper to the mapper
public interface MovieMapper {

    // MapStruct annotation generates Spring bean for this mapper
    @Mappings({
            @Mapping(source = "movie.phase.name", target = "phaseName"), // Maps name field of Phase to phaseName field of MovieDTO
            @Mapping(expression = "java(movie.getStatus().toUpperCase())", target = "status"), // Maps status field of Movie to status field of MovieDTO in uppercase
            @Mapping(source = "movie.boxOffice.worldwideBoxOffice", target = "worldWideBoxOffice"), // Maps worldwideBoxOffice field of BoxOffice to worldWideBoxOffice field of MovieDTO
            @Mapping(target = "characters", expression = "java(mapCharacters(movie,characters))")})
    MovieDTO toDTO(Movie movie, List<Character> characters);

    default List<CharacterDTO> mapCharacters(Movie movie, List<Character> characters) {
        return characters.stream()
                .map(character -> new CharacterDTO(character.getName())) // Map only the name
                .collect(Collectors.toList());
    }
}
