package com.in28minutes.springboot.learn_jpa_and_hibernate.DTO;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class MovieDTO {
    private String name;
    private LocalDate releaseDate;
    private Integer duration;
    private String director;
    private String writer;
    private String producer;
    private String status;
    private String phaseName;
    private Long worldWideBoxOffice;
    private List<CharacterDTO> characters;
}
