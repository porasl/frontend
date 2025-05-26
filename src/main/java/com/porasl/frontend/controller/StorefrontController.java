package com.porasl.frontend.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class StorefrontController {

    @GetMapping("/storefront")
    public String storefront() {
        return "Welcome to the storefront!";
    }
}