package com.example.spring240924.dto.c38;

import lombok.Data;

@Data
public class Customer {
    private Integer id;
    private String name;
    private String contactName;
    private String address;
    private String city;
    private String postalCode;
    private String country;
}
