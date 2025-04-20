package com.porasl.controller;

import java.util.Map;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
@RequestMapping("/api")
public class RegistrationController {

    private final RestTemplate restTemplate = new RestTemplate();

    @PostMapping("/register")
    public ResponseEntity<?> registerUser(@RequestBody Map<String, Object> userData) {
        String url = "http://localhost:8080/auth/registration";

        ResponseEntity<String> response = restTemplate.postForEntity(url, userData, String.class);
        return ResponseEntity.status(response.getStatusCode()).body(response.getBody());
    }
}
