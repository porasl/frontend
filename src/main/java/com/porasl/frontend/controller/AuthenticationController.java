package com.porasl.frontend.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController("frontendController")
@RequestMapping("/api")
public class AuthenticationController {

    @Autowired
    private RestTemplate restTemplate;

    @PostMapping("/register")
    public String registerUser(@RequestBody Map<String, Object> userData) {
        String url = "http://localhost:8080/auth/register";
        try {
            ResponseEntity<String> response = restTemplate.postForEntity(url, userData, String.class);
                return response.getBody();
            } catch (Exception e) {
                throw new RuntimeException("Failed to invoke microservice", e);
            }
        }   
    }
