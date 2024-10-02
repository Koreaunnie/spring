package com.example.spring240924.dto.c14;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.List;

@Data // Getter, Setter 등을 합쳐둔 자바 라이브러리 lombok 어노테이션
@AllArgsConstructor // 생성자를 자동 완성 시켜주는 어노테이션
public class Actor {
    private String name;
    private String agency;
    private String birth;
    private String mbti;
    private List<String> works;
}
