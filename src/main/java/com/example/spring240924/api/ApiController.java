package com.example.spring240924.api;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@RequestMapping("/api/main1")
@Controller
public class ApiController {
    @PostMapping("sub1")
    public void sub1() {
        System.out.println("/api/main1/sub1으로 요청옴");
    }

    // @RequestBody : JSON -> Map(JavaBeans) 로 피싱해주는 어노테이션
    @PostMapping("sub2")
    public void sub2(@RequestBody Map<String, Object> map) {
        System.out.println(map);
        System.out.println("ApiController1.sub2");
    }

    @PostMapping("sub3")
    public void sub3(@RequestBody Map<String, Object> map) {
        System.out.println(map);
    }

    @PostMapping("sub4")
    public void sub4(@RequestBody Map<String, Object> map) {
        System.out.println(map);
    }

    @PostMapping("sub6")
    public void sub6(@RequestBody Map<String, Object> map) {
        System.out.println(map);
    }

    @PostMapping("sub7")
    public void sub7(@RequestBody List<Object> list) {
        System.out.println(list);
    }

    @PostMapping("sub8")
    public void sub8(@RequestBody List<Map<String, Object>> list) {
        System.out.println(list);
    }

    @PostMapping("sub9")
    public void sub9(@RequestBody List<Map<String, Object>> list) {
        System.out.println(list);
    }
}
