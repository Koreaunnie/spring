package com.example.spring240924.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("main18")
public class Controller18 {
    @RequestMapping("sub1")
    public String sub1() {
        // redirect (redirection) : 다른 곳으로 가라는 응답
        // 브라우저는 이 응답을 받으면 새 요청을 보냄

        System.out.println("Controller18.sub1");
        // "/main18/sub2로 다시 요청 보내라"는 응답
        return "redirect:/main18/sub2";
    }

    @RequestMapping("sub2")
    public String sub2() {
        System.out.println("Controller18.sub2");

        return null;
    }

    @RequestMapping("sub3")
    public String sub3() {
        // 다음 요청에 데이터 전달하기
        // 1. request parameter 사용

        // 2. session attribute 사용
        return "redirect:/main18/sub4?name=kim&age=55";
    }

    @RequestMapping("sub4")
    public String sub4(
            @RequestParam(value = "name", required = false) String name,
            @RequestParam(value = "age", required = false) Integer age) {
        System.out.println("name = " + name);
        System.out.println("age = " + age);
        return null;
    }

    @RequestMapping("sub5")
    public String sub5(RedirectAttributes rttr) {
        // 1. request parameter 이용
        rttr.addAttribute("name", "흥민");
        rttr.addAttribute("address", "런던");
        return "redirect:/main18/sub6";
    }

    @RequestMapping("sub6")
    public String sub6(@RequestParam(value = "name", required = false) String name,
                       @RequestParam(value = "address", required = false) String address) {
        System.out.println("name = " + name);
        System.out.println("address = " + address);
        return null;
    }

    @RequestParam("sub7")
    public String sub7() {
        return "redirect:/main18/sub8";
    }

    @RequestParam("sub8")
    public String sub8() {
        return "redirect:/main18/sub9";
    }
}
