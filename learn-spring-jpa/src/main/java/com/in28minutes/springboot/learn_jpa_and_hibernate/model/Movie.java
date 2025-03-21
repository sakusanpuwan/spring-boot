package com.in28minutes.springboot.learn_jpa_and_hibernate.model;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

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

    // @JoinColumn is used in the entity that owns the foreign key.
    // Movie has the foreign key PHASE_ID and owns the relationship.
    // BoxOffice has the foreign key MOVIE_ID and owns the relationship.

    // Defines many-to-one relationship. Many movies can belong to one phase
    @ManyToOne(fetch = FetchType.LAZY) // Phase entity is lazily loaded. When Movie is fetch, Phase is only loaded when accessed
    @JoinColumn(name = "PHASE_ID",nullable = false) // Specifies the foreign key column in MOVIES table that references the PHASE_ID column in PHASES table
    private Phase phase;

    // Defines one-to-one relationship. One movie can have one box office
    // mappedBy = "movies" in BoxOffice entity, where BoxOffice is the owner of the relationship with the foreign key
    // cascadeType.ALL - if operation is performed on Movie it will be cascaded to associated BoxOffice record
    @OneToOne(mappedBy = "movie", cascade = CascadeType.ALL, fetch = FetchType.LAZY) // mappedBy is used in the entity that is not the owner of the relationship.
    private BoxOffice boxOffice;

    // Defines many-to-many relationship. Many movies can have many characters
//    @ManyToMany(fetch = FetchType.LAZY, cascade = {CascadeType.PERSIST, CascadeType.MERGE})
//    @JoinTable(
//            name = "MOVIE_CHARACTER", // Name of the join table
//            joinColumns = @JoinColumn(name = "MOVIE_ID"), // Foreign key in join table referencing the owner entity MOVIE
//            inverseJoinColumns = @JoinColumn(name = "CHARACTER_ID") // Foreign key in join table referencing the inverse entity CHARACTER
//    )
//    @JsonManagedReference
//    private List<Character> characters;

}
