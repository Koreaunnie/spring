package com.example.spring240924.dto.c11;

public class Student {
    private Integer number;
    private String name;
    private Integer age;
    private Double score;
    private String email;

    public Student(Integer number, String name, Integer age, Double score, String email) {
        this.number = number;
        this.name = name;
        this.age = age;
        this.score = score;
        this.email = email;
    }

    public Integer getNumber() {
        return number;
    }

    public String getName() {
        return name;
    }

    public Integer getAge() {
        return age;
    }

    public Double getScore() {
        return score;
    }

    public String getEmail() {
        return email;
    }
}
