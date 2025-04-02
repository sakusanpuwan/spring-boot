package com.in28minutes.springboot.learn_jpa_and_hibernate.DTO;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.*;

import java.time.LocalDate;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@JsonInclude(content = JsonInclude.Include.NON_NULL, value = JsonInclude.Include.NON_EMPTY)
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
    private String tomatoMeter;
    private String audienceScore;
    private List<CharacterDTO> characters;
    private BoxOfficeDTO boxOffice;
    private PublicResponseDTO publicResponse;
}
