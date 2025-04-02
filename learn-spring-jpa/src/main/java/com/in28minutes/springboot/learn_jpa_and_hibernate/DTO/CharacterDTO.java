package com.in28minutes.springboot.learn_jpa_and_hibernate.DTO;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.*;

import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@JsonInclude(content = JsonInclude.Include.NON_NULL, value = JsonInclude.Include.NON_EMPTY)
public class CharacterDTO {
    private String name;
    private String actor;
    private List<MovieDTO> movies;
}
