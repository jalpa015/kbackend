package com.kentarus.kbackend.model;

import org.springframework.stereotype.Component;

@Component
public class Model {

    private String value;

    public Model() {
        System.out.println("Initializing Default Constructor");
        this.value = "Default";
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
        System.out.println("Value : " + value);
    }
}
