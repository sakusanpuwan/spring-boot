package com.in28minutes.springboot.learn_jpa_and_hibernate.controller;

import com.in28minutes.springboot.learn_jpa_and_hibernate.DTO.PhaseDTO;
import com.in28minutes.springboot.learn_jpa_and_hibernate.service.PhaseService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/phases")
public class PhaseController {

    private final PhaseService phaseService;

    public PhaseController(PhaseService phaseService) {
        this.phaseService = phaseService;
    }

    @GetMapping()
    public ResponseEntity<List<PhaseDTO>> getAllPhases() {
        List<PhaseDTO> phases = phaseService.getAllPhases();
        return new ResponseEntity<>(phases, HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<PhaseDTO> getPhaseById(@PathVariable Long id) {
        PhaseDTO phaseDTO = phaseService.getPhaseById(id);
        return new ResponseEntity<>(phaseDTO, HttpStatus.OK);
    }
}
