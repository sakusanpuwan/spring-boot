package com.in28minutes.springboot.learn_jpa_and_hibernate.model;

import jakarta.persistence.*;
import lombok.*;

@Entity // Marks the class as a JPA entity and represents a table in the database
@Table(name = "PHASES") // Specifies the name of the database table associated with the entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Phase {

    @Id // Marks the id as Primary Key of the Phase entity
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "PHASE_ID")
    private Long id;

    @Column(name = "PHASE_NAME") // Specifies the name of the column in the database table
    private String name;

}
