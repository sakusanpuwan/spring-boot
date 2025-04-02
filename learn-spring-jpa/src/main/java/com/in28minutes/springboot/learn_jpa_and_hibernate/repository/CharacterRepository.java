package com.in28minutes.springboot.learn_jpa_and_hibernate.repository;

import com.in28minutes.springboot.learn_jpa_and_hibernate.model.Character;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CharacterRepository extends JpaRepository<Character, Long> {

}
