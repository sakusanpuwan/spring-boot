package com.in28minutes.springboot.learn_jpa_and_hibernate.exception;

import java.time.LocalDateTime;

public class ErrorDetails {

    private final LocalDateTime timestamp;
    private final String message;
    private final int status;

    public ErrorDetails(LocalDateTime timestamp, String message, int status) {
        super();
        this.timestamp = timestamp;
        this.message = message;
        this.status = status;
    }

    public LocalDateTime getTimestamp() {
        return timestamp;
    }

    public String getMessage() {
        return message;
    }

    public int getStatus() {
        return status;
    }

}
