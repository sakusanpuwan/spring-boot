package com.in28minutes.springboot.learn_jpa_and_hibernate.model;

import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDate;

@Entity
@Table(name = "MOVIES")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Movie {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "MOVIE_ID")
    private Long id;

    @Column(name = "MOVIE_NAME", nullable = false)
    private String name;

    @Column(name = "RELEASE_DATE")
    private LocalDate releaseDate;

    @Column(name = "MOVIE_DURATION")
    private Integer duration;

    @Column(name = "DIRECTOR")
    private String director;

    @Column(name = "WRITER")
    private String writer;

    @Column(name = "PRODUCER")
    private String producer;

    @Column(name = "STATUS")
    private String status;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "PHASE_ID",nullable = false)
    private Phase phase;

}
