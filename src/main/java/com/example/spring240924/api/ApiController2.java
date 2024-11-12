package com.example.spring240924.api;

import com.example.spring240924.dto.a2.Person;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
@RequestMapping("/api/main2")
public class ApiController2 {
    @PostMapping("sub1")
    public void method1(@RequestBody Person map) {
        System.out.println(map);
    }
}
