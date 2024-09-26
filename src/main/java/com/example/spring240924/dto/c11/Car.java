package com.example.spring240924.dto.c11;

public class Car {
    private String modelName;
    private Integer price;
    private String expired;

    public Car(String modelName, Integer price, String expired) {
        this.modelName = modelName;
        this.price = price;
        this.expired = expired;
    }

    public String getModelName() {
        return modelName;
    }

    public Integer getPrice() {
        return price;
    }

    public String getExpired() {
        return expired;
    }
}
