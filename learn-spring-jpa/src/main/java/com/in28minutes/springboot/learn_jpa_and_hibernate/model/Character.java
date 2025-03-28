package com.in28minutes.springboot.learn_jpa_and_hibernate.model;

import jakarta.persistence.*;
import lombok.*;

@Entity // Marks the class as a JPA entity and represents a table in the database
@Table(name = "CHARACTERS") // Specifies the name of the database table associated with the entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Character {

    @Id // Marks the id as Primary Key of the Phase entity
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long id;

    // @JoinColumn is used in the entity that owns the foreign key.
    // Character has the foreign key MOVIE_ID and owns the relationship.

    // Defines many-to-one relationship. Many characters can belong to one movie
    // mappedBy = "characters" in Movie entity, where Movie is the owner of the relationship with the JOIN TABLE
//    @ManyToMany(mappedBy = "characters", fetch = FetchType.LAZY)
//    @JsonBackReference
//    private List<Movie> movies;

    @ManyToOne
    @JoinColumn(name = "MOVIE_ID", nullable = false)
    private Movie movie;

    @Column(name = "MOVIE")
    private String movieName;

    @Column(name = "CHARACTER_ID")
    private Long characterId;

    @Column(name = "CHARACTER_NAME")
    private String name;

    @Column(name = "ACTOR")
    private String actor;

}
