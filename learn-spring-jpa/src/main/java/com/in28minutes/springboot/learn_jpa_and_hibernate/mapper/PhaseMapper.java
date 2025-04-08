package com.in28minutes.springboot.learn_jpa_and_hibernate.mapper;

import com.in28minutes.springboot.learn_jpa_and_hibernate.DTO.MovieDTO;
import com.in28minutes.springboot.learn_jpa_and_hibernate.DTO.PhaseDTO;
import com.in28minutes.springboot.learn_jpa_and_hibernate.model.Phase;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import java.util.List;

@Mapper(componentModel = "spring")
public interface PhaseMapper {

    @Mapping(expression = "java(mapMovies(phase))", target = "movies")
    PhaseDTO toDTO(Phase phase);

    default List<MovieDTO> mapMovies(Phase phase) {
        return phase.getMovies().stream()
                .map(movie -> MovieDTO.builder()
                        .name(movie.getName())
                        .releaseDate(movie.getReleaseDate())
                        .build()
                )
                .toList();
    }
}