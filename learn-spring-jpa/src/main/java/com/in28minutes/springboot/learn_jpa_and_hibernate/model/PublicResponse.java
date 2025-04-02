package com.in28minutes.springboot.learn_jpa_and_hibernate.model;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "PUBLIC_RESPONSE")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class PublicResponse {

    @Id
    @Column(name = "MOVIE_ID")
    private Long id;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "MOVIE_ID")
    @MapsId
    private Movie movie;

    @Column(name = "MOVIE_NAME")
    private String name;

    @Column(name = "TOMATO_METER")
    private String tomatoMeter;

    @Column(name = "AUDIENCE_SCORE")
    private String audienceScore;

    @Column(name = "METACRITICAL")
    private String metaCritical;

    @Column(name = "CINEMA_SCORE")
    private String cinemaScore;

    @Column(name = "DOMESTIC_RANKING")
    private String domesticRanking;

    @Column(name = "WORLD_WIDE_RANKING")
    private String worldWideRanking;

    @Column(name = "PHASE_ID")
    private int phaseId;
}