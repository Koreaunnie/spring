package com.example.spring240924.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
// @RequestMapping("/main4") // 컨트롤러 내의 핸들러 메소드 경로 앞부분
@RequestMapping("main4") // 컨트롤러 내의 핸들러 메소드 경로 앞부분
public class Controller04 {

    // request handler method
    // https://docs.spring.io/spring-framwork/reference/web/webmvc/mvc-controller/ann-methods.html

    // localhost:8080/main4/sub1
    @RequestMapping("sub1")
    public void sub1() {
        System.out.println("Controller4.sub1");
    }

    @RequestMapping("sub2")
    public void sub2() {
        System.out.println("Controller4.sub2");
    }
}
