package com.in28minutes.springboot.learn_jpa_and_hibernate.mapper;

import com.in28minutes.springboot.learn_jpa_and_hibernate.DTO.BoxOfficeDTO;
import com.in28minutes.springboot.learn_jpa_and_hibernate.model.BoxOffice;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface BoxOfficeMapper {

    BoxOfficeDTO toDTO(BoxOffice boxOffice);
}