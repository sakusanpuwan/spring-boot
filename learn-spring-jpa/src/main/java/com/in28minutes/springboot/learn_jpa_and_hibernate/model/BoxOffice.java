package com.in28minutes.springboot.learn_jpa_and_hibernate.model;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "BOX_OFFICE")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class BoxOffice {

    @Id
    @Column(name = "MOVIE_ID")
    private Long id;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "MOVIE_ID") // Specifies the foreign key column in BOX_OFFICE table that references the MOVIE_ID column in MOVIES table
    @MapsId // Tells JPA the primary key of BoxOffice maps to the primary key of Movie
    private Movie movie;

    @Column(name = "MOVIE_NAME")
    private String name;

    @Column(name = "PHASE_ID")
    private int phaseId;

    @Column(name = "WORLDWIDE_BOX_OFFICE")
    private Long worldwideBoxOffice;

    @Column(name = "DOMESTIC_BOX_OFFICE")
    private Long domesticBoxOffice;

    @Column(name = "INTERNATIONAL_BOX_OFFICE")
    private Long internationalBoxOffice;

    @Column(name = "OPENING_WEEKEND")
    private Long openingWeekend;

    @Column(name = "PRODUCTION_BUDGET")
    private Long productionBudget;

    @Column(name = "WORLDWIDE_BOX_OFFICE_MILLIONS")
    private String worldwideBoxOfficeMillions;

    @Column(name = "DOMESTIC_BOX_OFFICE_MILLIONS")
    private String domesticBoxOfficeMillions;

    @Column(name = "INTERNATIONAL_BOX_OFFICE_MILLIONS")
    private String internationalBoxOfficeMillions;

    @Column(name = "OPENING_WEEKEND_MILLIONS")
    private String openingWeekendMillions;

    @Column(name = "PRODUCTION_BUDGET_MILLIONS")
    private String productionBudgetMillions;

    @Column(name = "BUDGET_PERCENTAGE")
    private Double budgetPercentage;

    @Column(name = "OPENING_WEEKEND_GROSS_PERCENTAGE")
    private Double openingWeekendGrossPercentage;

    @Column(name = "DOMESTIC_GROSS_PERCENTAGE")
    private Double domesticGrossPercentage;

    @Column(name = "INTERNATIONAL_GROSS_PERCENTAGE")
    private Double internationalGrossPercentage;

    @Column(name = "BUDGET_OPENING_WEEKEND_PERCENTAGE")
    private Double budgetOpeningWeekendPercentage;

    @Column(name = "BUDGET_RECOVERED_PERCENTAGE")
    private Double budgetRecoveredPercentage;

    @Column(name = "INTERNATIONAL_COLLECTION_PERCENTAGE")
    private Double internationalCollectionPercentage;

    @Column(name = "INTERNATIONAL_VS_BUDGET_PERCENTAGE")
    private Double internationalVsBudgetPercentage;

    @Column(name = "OPENING_WEEKEND_VS_DOMESTIC_PERCENTAGE")
    private Double openingWeekendVsDomesticPercentage;

    @Column(name = "DOMESTIC_VS_BUDGET_PERCENTAGE")
    private Double domesticVsBudgetPercentage;

    @Column(name = "POST_OPENING_WEEKEND_PERCENTAGE")
    private Double postOpeningWeekendPercentage;

    @Column(name = "DOMESTIC_POST_OPENING_PERCENTAGE")
    private Double domesticPostOpeningPercentage;

    @Column(name = "POST_OPENING_VS_BUDGET_PERCENTAGE")
    private Double postOpeningVsBudgetPercentage;
}