package com.example.spring240924.dto.c21;

import lombok.Data;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@Data
public class MyBean5 {
    private List<String> select; // private String[] select; 도 가능
    private LocalDateTime now;
    private String note;
    private String id;
}
