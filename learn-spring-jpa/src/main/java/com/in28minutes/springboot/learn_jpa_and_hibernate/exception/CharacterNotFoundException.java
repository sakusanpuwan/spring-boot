package com.in28minutes.springboot.learn_jpa_and_hibernate.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(code = HttpStatus.NOT_FOUND)
public class CharacterNotFoundException extends RuntimeException {
    public CharacterNotFoundException(Long id) {
        super("Character " + id + " is not found");
    }

}
