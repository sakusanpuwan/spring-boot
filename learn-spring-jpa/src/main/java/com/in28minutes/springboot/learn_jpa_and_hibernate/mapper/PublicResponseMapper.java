package com.in28minutes.springboot.learn_jpa_and_hibernate.mapper;

import com.in28minutes.springboot.learn_jpa_and_hibernate.DTO.PublicResponseDTO;
import com.in28minutes.springboot.learn_jpa_and_hibernate.model.PublicResponse;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface PublicResponseMapper {

    PublicResponseDTO toDTO(PublicResponse publicResponse);
}