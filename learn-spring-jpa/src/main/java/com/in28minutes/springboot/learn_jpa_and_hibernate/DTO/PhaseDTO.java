package com.in28minutes.springboot.learn_jpa_and_hibernate.DTO;

import lombok.*;

import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PhaseDTO {
    private String name;
    private List<MovieDTO> movies;
}
