package com.in28minutes.springboot.learn_jpa_and_hibernate.DTO;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@JsonInclude(content = JsonInclude.Include.NON_NULL, value = JsonInclude.Include.NON_EMPTY)
public class BoxOfficeDTO {

    private Long worldwideBoxOffice;
    private Long domesticBoxOffice;
    private Long internationalBoxOffice;
    private Long openingWeekend;
    private Long productionBudget;
    private String worldwideBoxOfficeMillions;
    private String domesticBoxOfficeMillions;
    private String internationalBoxOfficeMillions;
    private String openingWeekendMillions;
    private String productionBudgetMillions;
    private Double budgetPercentage;
    private Double openingWeekendGrossPercentage;
    private Double domesticGrossPercentage;
    private Double internationalGrossPercentage;
    private Double budgetOpeningWeekendPercentage;
    private Double budgetRecoveredPercentage;
    private Double internationalCollectionPercentage;
    private Double internationalVsBudgetPercentage;
    private Double openingWeekendVsDomesticPercentage;
    private Double domesticVsBudgetPercentage;
    private Double postOpeningWeekendPercentage;
    private Double domesticPostOpeningPercentage;
    private Double postOpeningVsBudgetPercentage;
}
