package com.example.spring240924.dto.c12;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@EqualsAndHashCode
public class Book {
    private String title;
    private String author;
    private Integer price;

}
