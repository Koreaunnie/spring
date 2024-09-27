package com.example.spring240924.controller;

import com.example.spring240924.dto.c14.Actor;
import com.example.spring240924.dto.c14.Book;
import com.example.spring240924.dto.c14.Member;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("main14")
public class Controller14 {
    @RequestMapping("sub1")
    public void sub1(Model model) {
        model.addAttribute("list", List.of(
                new Book("java", "shin", "hanbit", 1000, 5000),
                new Book("git", "linus", "scm", 200, 2000),
                new Book("react", "adam", "meta", 450, 40000),
                new Book("vue", "captain", "apple", 300, 35000)
        ));

        model.addAttribute("members", List.of(
                new Member("흥민", 183, 78, "07/28", "토트넘", "MF"),
                new Member("강인", 174, 72, "02/19", "파리", "MF"),
                new Member("아몬드", 183, 82, "07/24", "강북구", "MF"),
                new Member("봉봉", 180, 50, "02/19", "우주", "MF")
        ));
    }

    @RequestMapping("sub2")
    public void sub2(Model model) {
        model.addAttribute("actor", new Actor(
                "이정재", "a", "01/01", "asvd",
                List.of("관상", "신세계", "도둑들")
        ));
        model.addAttribute("actorList",
                List.of(
                        new Actor("lee", "com1", "01/01", "sadf",
                                List.of("a", "b", "c")),
                        new Actor("kim", "com2", "02/02", "sadf",
                                List.of("a", "b", "c")),
                        new Actor("park", "com3", "03/03", "sadf",
                                List.of("a", "b", "c")),
                        new Actor("choi", "com4", "04/04", "sadf",
                                List.of("a", "b", "c")),
                        new Actor("shim", "com5", "05/05", "sadf",
                                List.of("a", "b", "c"))
                ));
    }
}
