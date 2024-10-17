package com.example.spring240924.controller;

import com.example.spring240924.mapper.Mapper03;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("main33")
public class Controller33 {
    private final Mapper03 mapper03;

    @RequestMapping("sub1")
    public void sub1(String[] args) {
        String category = mapper03.getDescription();
        System.out.println("category = " + category);
    }
}
