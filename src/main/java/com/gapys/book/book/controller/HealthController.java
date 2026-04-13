package com.gapys.book.book.controller;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
@RequestMapping("/health")
class HealthController {
    @GetMapping
    ResponseEntity<String> getHealth() {
        return ResponseEntity.ok("UP");

    }

}
