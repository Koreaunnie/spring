package com.example.spring240924.api;

import com.example.spring240924.dto.a2.Person;
import com.example.spring240924.dto.a2.Book;
import com.example.spring240924.dto.a2.Player;
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
    public void method1(@RequestBody Person person) {
        System.out.println(person);
    }

    @PostMapping("sub2")
    public void method2(@RequestBody Book book) {
        System.out.println(book);
    }

    @PostMapping("sub3")
    public void method3(@RequestBody Player player) {
        System.out.println(player);
    }
}
