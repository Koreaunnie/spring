package com.example.spring240924.controller;

import com.example.spring240924.mapper.Mapper06;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@Controller
@RequiredArgsConstructor
@RequestMapping("main36")
public class Controller36 {
    final Mapper06 mapper06;

    @GetMapping("sub1")
    public void sub1() {
        String name = mapper06.select01(1);
        System.out.println("name = " + name);
        System.out.println(mapper06.select01(2));
        System.out.println(mapper06.select01(3));
        System.out.println(mapper06.select01(4));

        System.out.println();

        // 상품번호를 받아서 상품명을 조회/출력
        // select02
        String p1 = mapper06.select02(1);
        String p2 = mapper06.select02(2);
        String p3 = mapper06.select02(3);
        System.out.println("p1 = " + p1);
        System.out.println("p2 = " + p2);
        System.out.println("p3 = " + p3);
    }

    @GetMapping("sub2")
    public void sub2(Map map) {
        // 두 도시를 입력 받아서 두 도시에 있는 고객명들 조회/출력
        List<String> list = mapper06.select03("Germany", "USA");
        list.forEach(System.out::println);

        System.out.println();

        List<String> l = mapper06.select04(50, 200);
        l.forEach(System.out::println);

        System.out.println();

        // 두 날짜를 입력받아서 두 날짜 사이에 태어난 직원 이름 조회/출력
        List<String> n = mapper06.select05("1950-01-01", "1959-12-31");
        n.forEach(System.out::println);
    }

    @GetMapping("sub3")
    public void sub3(Integer id) {
        String name = mapper06.select01(id);
        System.out.println("name = " + name);
    }

    // /main36/sub4?c1=germany&c1=usa
    @GetMapping("sub4")
    public void sub4(String city1, String city2) {
        mapper06.select03(city1, city2)
                .forEach(System.out::println);
    }
}
