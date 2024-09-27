package com.example.spring240924.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("main13")
public class Controller13 {

    @RequestMapping("sub1")
    public void method1(Model model) {
        model.addAttribute("attr1", "hello model attribute");
    }

    @RequestMapping("sub2")
    public void method2(Model model) {

    }

    @RequestMapping("sub3")
    public void method3(Model model) {

    }

    @RequestMapping("sub4")
    public void method4(Model model) {

    }

    @RequestMapping("sub5")
    public void method5(Model model) {

    }

    @RequestMapping("sub6")
    public void method6(Model model) {
        model.addAttribute("products", List.of("피자", "치킨", "햄버거", "콜라"));
        model.addAttribute("players", List.of("오타니", "흥민", "범근", "케인", "지성"));
        model.addAttribute("cityList", List.of("seoul", "jeju", " london", "ny", "la"));
    }

    @RequestMapping("sub7")
    public void method7(Model model) {
        model.addAttribute("people",
                Map.of("kim", "seoul",
                        "lee", "busan",
                        "park", "daegu"
                ));
        model.addAttribute("players",
                Map.of("kim", "seoul",
                        "lee", "busan",
                        "park", "daegu"
                ));
        model.addAttribute("food",
                Map.of("초콜렛", "가나",
                        "탄산", "콜라",
                        "버거", "빅맥",
                        "피자", "마르게리따"
                ));
    }

    @RequestMapping("sub8")
    public void method8(Model model) {
        model.addAttribute("datas",
                List.of(Map.of(
                        "marvel", "avengers",
                        "dc", "batman",
                        "sony", "spiderman"
                ), Map.of(
                        "show", "오징어게임",
                        "drama", "무빙",
                        "film", "조커"
                )));

        model.addAttribute("players",
                List.of(Map.of(
                        "손흥민", "공격수",
                        "이강인", "미드필더",
                        "김민재", "수비수"

                ), Map.of(
                        "해리 케인", "공격수",
                        "포든", "미드필더",
                        "조던", "골키퍼"
                )));
    }

    @RequestMapping("sub9")
    public void method9(Model model) {
        model.addAttribute("data",
                Map.of("foods", List.of("피자", "버거", "국밥", "파전"),
                        "coffees", List.of("아메", "라떼", "모카")));

        model.addAttribute("movies",
                Map.of("marvel", List.of("ironman", "captian", "panther"),
                        "dc", List.of("superman", "jocker", "batman")));
    }
}
