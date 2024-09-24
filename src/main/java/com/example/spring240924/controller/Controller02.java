package com.example.spring240924.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.WebRequest;

@Controller
public class Controller02 {

    // localhost:8080/main2/sub1
    @RequestMapping("/main2/sub1")
    public void sub1(WebRequest request){
        String name = request.getParameter("name");
        System.out.println("name = " + name);
        System.out.println("Controller02.sub1");
    }

    // localhost:8080/main2/sub2?address=seoul
    // 이 경로로 요청 올 때 일하는 메소드를 작성
    // : 콘솔에 address 파라미터값(seoul)을 출력
    @RequestMapping("/main2/sub2")
    public void sub2(WebRequest request){
        String address = request.getParameter("address");
        System.out.println("address = " + address);
    }

    // request parameter
    // : 경로 뒤에 ?로 시작
    //  이름과 값이 =로 연결되어 있음 (이름=값)
    //  각 파라미터는 &로 연결되어있음 (이름1=값1&이름2=값2&이름3=값3)

    // localhost:8080/main2/sub3?address=seoul&email=gmail
    @RequestMapping("/main2/sub3")
    public void sub3(WebRequest request){
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        System.out.println("address = " + address);
        System.out.println("email = " + email);
    }

    // /main2/sub3?info=java&location=강남&country=한국
    // 메소드 작성
    @RequestMapping("/main2/sub4")
    public void sub4(WebRequest request){
        String info = request.getParameter("info");
        String location = request.getParameter("location");
        String country = request.getParameter("country");
        System.out.println("info = " + info);
        System.out.println("location = " + location);
        System.out.println("country = " + country);
    }

    // ?param1=value1&param2=value2&param2=value3
    @RequestMapping("/main2/sub5")
    public void sub5(WebRequest request){
        String param1 = request.getParameter("param1");
        String[] param2s = request.getParameterValues("param2");

        System.out.println("param1 = " + param1);
        System.out.println("param2s = " + param2s[0]);
        System.out.println("param2s = " + param2s[1]);
    }

    // /main2/sub6?hobby=축구&hobby=야구&hobby=농구&name=흥민
    @RequestMapping("/main2/sub6")
    public void sub6(WebRequest request){
        String name = request.getParameter("name");
        String[] hobbies = request.getParameterValues("hobby");

        System.out.println("name = " + name);
        for (int i = 0; i < hobbies.length; i++) {
            System.out.println("hobby = " + hobbies[i]);
        }
    }

    // /main2/sub7?address=seoul&email=gmail&email=yahoo
    @RequestMapping("/main2/sub7")
    public void sub7(WebRequest request){
        String address = request.getParameter("address");
        System.out.println("address = " + address);
        String[] emails = request.getParameterValues("email");
        System.out.println("emails[0] = " + emails[0]);
        System.out.println("emails[1] = " + emails[1]);
    }

    // ?name=son&age=30&point9.8
    // request parameter는 모두 String
    // 필요하면 다른 타입으로 변환해서 사용해야함
    @RequestMapping("/main2/sub8")
    public void sub8(WebRequest request){
        String name = request.getParameter("name");
        System.out.println("name = " + name);

        String age = request.getParameter("age");
        Integer ageInt = Integer.parseInt(age);
        System.out.println("ageInt = " + ageInt);

        String point = request.getParameter("point");
        Double pointDouble = Double.parseDouble(point);
        System.out.println("pointDouble = " + pointDouble);
    }
}
