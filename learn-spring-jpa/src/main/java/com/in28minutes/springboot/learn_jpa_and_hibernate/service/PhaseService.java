package com.in28minutes.springboot.learn_jpa_and_hibernate.service;

import com.in28minutes.springboot.learn_jpa_and_hibernate.DTO.PhaseDTO;
import com.in28minutes.springboot.learn_jpa_and_hibernate.exception.EntityNotFoundException;
import com.in28minutes.springboot.learn_jpa_and_hibernate.mapper.PhaseMapper;
import com.in28minutes.springboot.learn_jpa_and_hibernate.model.Phase;
import com.in28minutes.springboot.learn_jpa_and_hibernate.repository.PhaseRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(readOnly = true)
public class PhaseService {

    private final PhaseRepository phaseRepository;
    private final PhaseMapper phaseMapper;

    public PhaseService(PhaseRepository phaseRepository, PhaseMapper phaseMapper) {
        this.phaseRepository = phaseRepository;
        this.phaseMapper = phaseMapper;
    }

    public List<PhaseDTO> getAllPhases() {
        List<Phase> phases = phaseRepository.findAll();
        return phases.stream().map(phaseMapper::toDTO).toList();
    }

    public PhaseDTO getPhaseById(Long id) {
        Phase phase = phaseRepository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException("Phase " + id + " not found"));
        return phaseMapper.toDTO(phase);
    }

}
