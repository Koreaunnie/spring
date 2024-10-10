package com.example.spring240924.dto.c27;

import lombok.Data;

@Data
public class Order {
    private String orderId;
    private String customerId;
    private String employeeId;
    private String orderDate;
    private String shipperId;
}
