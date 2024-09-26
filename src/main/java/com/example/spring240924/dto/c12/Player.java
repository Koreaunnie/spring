package com.example.spring240924.dto.c12;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

// @AllArgsConstructor // 모든 필드를 받는 생성자
// @NoArgsConstructor // argument(파라미터) 없는 생성자
@RequiredArgsConstructor // final 필드 받는 생성자
public class Player {

    private final int age;
    private final String name;
    private Boolean married;

}
