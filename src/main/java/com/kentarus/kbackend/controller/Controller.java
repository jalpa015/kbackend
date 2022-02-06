package com.kentarus.kbackend.controller;

import com.kentarus.kbackend.model.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {
    @GetMapping("/hello")
    public String getHello() {
        return "Hello";
    }

    @PostMapping("/post")
    public Model setHello(@RequestBody Model model){
        model.setValue(model.getValue());
        System.out.println("Model value : " + model.getValue());
        return model;
    }
}