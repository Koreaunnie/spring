package com.example.spring240924.api;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/api/main5")
public class ApiController5 {
    @GetMapping("sub1")
    @ResponseBody
    public String method1() {
        System.out.println("ApiController5.method1");
        return "sub1";
    }

    @GetMapping("sub3")
    @ResponseBody
    public String method3() {
        System.out.println("ApiController5.method3");
        return "seoul";
    }

    @GetMapping("sub4")
    @ResponseBody
    public Map<String, Object> method4() {
        return Map.of("name", "kim", "age", 18);
    }

    @GetMapping("sub5")
    @ResponseBody
    public Map<String, Object> method5() {
        return Map.of("title", "책 제목", "content", "책 내용", "price", 15000, "available", true);
    }

    @GetMapping("sub6")
    @ResponseBody
    public Map<String, Object> method6() {
        return Map.of("name", "kim", "items", List.of("치킨", "피자", "떡볶이"),
                "team", Map.of("name", "twins", "location", "seoul"));
    }

    @GetMapping("sub7")
    @ResponseBody
    public Map<String, Object> method7() {
        return Map.of("product", Map.of("name", "car", "price", "1000", "quantity", 100),
                "company", Map.of("location", List.of("seoul", "ulsan")));
    }
}
