package com.in28minutes.springboot.learn_jpa_and_hibernate.mapper;

import com.in28minutes.springboot.learn_jpa_and_hibernate.DTO.CharacterDTO;
import com.in28minutes.springboot.learn_jpa_and_hibernate.DTO.MovieDTO;
import com.in28minutes.springboot.learn_jpa_and_hibernate.model.Movie;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;

import java.util.List;

@Mapper(componentModel = "spring", uses = {CharacterMapper.class, BoxOfficeMapper.class, PublicResponseMapper.class, PhaseMapper.class})
// Adds CharacterMapper to the mapper
public interface MovieMapper {

    // MapStruct annotation generates Spring bean for this mapper
    @Mappings({
            @Mapping(source = "phase.name", target = "phaseName"), // Maps name field of Phase to phaseName field of MovieDTO
            @Mapping(expression = "java(movie.getStatus().toUpperCase())", target = "status"), // Maps status field of Movie to status field of MovieDTO in uppercase
            @Mapping(source = "boxOffice.worldwideBoxOffice", target = "worldWideBoxOffice"), // Maps worldwideBoxOffice field of BoxOffice to worldWideBoxOffice field of MovieDTO
            @Mapping(expression = "java(mapCharacters(movie))", target = "characters"),
            @Mapping(source = "publicResponse.tomatoMeter", target = "tomatoMeter"),
            @Mapping(source = "publicResponse.audienceScore", target = "audienceScore"),
            @Mapping(target = "boxOffice", ignore = true),
            @Mapping(target = "publicResponse", ignore = true)
    })
    MovieDTO toDTO(Movie movie);

    @Mappings({
            @Mapping(source = "phase.name", target = "phaseName"), // Maps name field of Phase to phaseName field of MovieDTO
            @Mapping(expression = "java(movie.getStatus().toUpperCase())", target = "status"), // Maps status field of Movie to status field of MovieDTO in uppercase
            @Mapping(expression = "java(mapCharacters(movie))", target = "characters"),
            @Mapping(source = "boxOffice", target = "boxOffice"),
            @Mapping(source = "publicResponse", target = "publicResponse")
    })
    MovieDTO toFullDTO(Movie movie);

    default List<CharacterDTO> mapCharacters(Movie movie) {
        return movie.getCharacters().stream()
                .map(character -> CharacterDTO.builder()
                        .name(character.getName())
                        .actor(character.getActor())
                        .build()
                ) // Map only the name + actor
                .toList();
    }

}
