package com.example.spring240924.controller;

import com.example.spring240924.dto.c10.Car;
import com.example.spring240924.dto.c10.Computer;
import com.example.spring240924.dto.c10.Person;
import com.example.spring240924.dto.c10.Student;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main10")
public class Controller10 {
    @RequestMapping("sub1")
    public String sub1(Model model) {
        // javaBeans : get, set 메소드가 있는 객체 (클래스)
        // dto.c10 에 있음
        var obj = new Student();
        obj.setId(11);
        obj.setName("donald");
        obj.setEmail("donald@gmail.com");
        model.addAttribute("student", obj);
        return null;
    }

    @RequestMapping("sub2")
    public void sub2(Model model) {
        Car car1 = new Car();
        car1.setModel("genesis");
        car1.setCompany("hyundai");
        car1.setPrice(500);

        Car car2 = new Car();
        car2.setModel("x");
        car2.setCompany("tesla");
        car2.setPrice(700);

        model.addAttribute("hCar", car1);
        model.addAttribute("tCar", car2);
    }

    @RequestMapping("sub3")
    public String sub3(Model model) {
        Computer com = new Computer();
        com.setId(99);
        com.setName("intel");
        com.setModel("model 9");
        com.setExpired(true);

        model.addAttribute("computer", com);

        return null;
    }

    @RequestMapping("sub4")
    public void sub4(Model model) {
        Person person = new Person();
        person.setEmail("donald@gmail.com");
        person.setMarried(true);
        person.setAddress("us");
        person.setAge(100);

        model.addAttribute("person", person);
    }

}
