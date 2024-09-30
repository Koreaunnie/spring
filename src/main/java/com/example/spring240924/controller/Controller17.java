package com.example.spring240924.controller;

import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("main17")
public class Controller17 {
    @RequestMapping("sub1")
    public void sub1(Model model) {

    }

    @RequestMapping("sub2")
    public void sub2(Model model) {

    }

    @RequestMapping("sub3")
    public void sub3(@RequestParam(value = "id", required = false) String id,
                     Model model,
                     HttpSession session) {
        if (id != null && !id.isEmpty()) {
            System.out.println("id = " + id);
            session.setAttribute("userId", id);
        }
    }

    @RequestMapping("sub5")
    public String sub5(Model model, HttpSession session) {
        session.invalidate();

        return "redirect:/main17/sub3";
    }
}
