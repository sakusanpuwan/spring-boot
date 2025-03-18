package com.in28minutes.springboot.learn_jpa_and_hibernate.mapper;

import com.in28minutes.springboot.learn_jpa_and_hibernate.DTO.MovieDTO;
import com.in28minutes.springboot.learn_jpa_and_hibernate.model.Movie;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;
import org.mapstruct.factory.Mappers;

@Mapper(componentModel = "spring")
public interface MovieMapper {

    @Mappings({
            @Mapping(source = "phase.name", target = "phaseName"),
            @Mapping(expression = "java(movie.getStatus().toUpperCase())", target = "status")
    })
    MovieDTO toDTO(Movie movie);
}
