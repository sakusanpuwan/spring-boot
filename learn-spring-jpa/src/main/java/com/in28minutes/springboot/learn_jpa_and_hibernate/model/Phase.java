package com.in28minutes.springboot.learn_jpa_and_hibernate.model;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "PHASES")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Phase {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "PHASE_ID")
    private Long id;

    @Column(name = "PHASE_NAME")
    private String name;

}
