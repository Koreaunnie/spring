package com.example.spring240924.dto.c12;

import lombok.Data;

@Data // Getter, Setter, ToString, EqualsAnsHashCode, RequiredArgsConstructor
public class Car {
    private String make;
    private String model;
    private int year;
}
