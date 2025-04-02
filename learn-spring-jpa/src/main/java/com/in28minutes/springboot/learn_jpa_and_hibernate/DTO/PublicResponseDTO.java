package com.in28minutes.springboot.learn_jpa_and_hibernate.DTO;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@JsonInclude(content = JsonInclude.Include.NON_NULL, value = JsonInclude.Include.NON_EMPTY)
public class PublicResponseDTO {
    private String tomatoMeter;
    private String audienceScore;
    private String metaCritical;
    private String cinemaScore;
    private String domesticRanking;
    private String worldWideRanking;
}
