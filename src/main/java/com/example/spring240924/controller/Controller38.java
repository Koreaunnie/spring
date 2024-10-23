package com.example.spring240924.controller;

import com.example.spring240924.dto.c38.Customer;
import com.example.spring240924.dto.c38.Employee;
import com.example.spring240924.mapper.Mapper08;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
@RequestMapping("main38")
@RequiredArgsConstructor
public class Controller38 {
    private final Mapper08 mapper08;

    @GetMapping("sub1")
    public void method1() {
        mapper08.update1();
    }

    @GetMapping("sub2")
    public void method2() {
        mapper08.update2("흥민",
                "득점왕",
                "토트넘",
                "런던",
                "333",
                "영국",
                3
        );
    }

    @GetMapping("sub3")
    public void method3() {
        Customer customer = new Customer();
        customer.setId(3);
        customer.setName("카카");
        customer.setContactName("아이콘");
        customer.setAddress("리우");
        customer.setCity("상파울로");
        customer.setCountry("브라질");
        customer.setPostalCode("5555");
        mapper08.update3(customer);
    }

    // /main38/sub4?name=지성&contactName=코치&address=신촌&city=서울&country=한국&postalCode=777&id=3
    @GetMapping("sub4")
    public void method4(String name,
                        String contactName,
                        String address,
                        String city,
                        String country,
                        String postalCode,
                        Integer id) {
        mapper08.update2(name, contactName, address, city, country, postalCode, id);
    }

    // /main38/sub5?name=정환&contactName=포워드&address=강남&city=인천&country=한국&postalCode=999&id=3
    @GetMapping("sub5")
    public void method5(Customer customer) {
        mapper08.update3(customer);
    }

    // /main38/sub6?id=1&lastName=강인&firstName=이&birthDate=2002-02-02&photo=사진&notes=생제르맹
    @GetMapping("sub6")
    public void method6(Employee employee) {
        mapper08.update4(employee);
    }

    @GetMapping("sub7")
    public void method7(Integer id, Model model) {
        Customer customer = mapper08.select1(id);
        if (customer != null) {
            model.addAttribute("customer", customer);
        }
    }

    @PostMapping("sub8")
    public void method8(Customer customer) {
        mapper08.update3(customer);
    }

    @GetMapping("sub9")
    public void method9(Integer id, Model model) {
        Employee employee = mapper08.select2(id);
        if (employee != null) {
            model.addAttribute("employee", employee);
        }
    }

    @PostMapping("sub10")
    public void method10(Employee employee) {
        mapper08.update4(employee);
    }

    @GetMapping("sub11")
    public void method11() {
        Customer customer = new Customer();
        customer.setName("한강");
        customer.setContactName("노벨상");
        customer.setPostalCode("99999");
        customer.setCountry("한국");
        customer.setCity("광주");
        customer.setAddress("서울");

        System.out.println("입력전" + customer);
        mapper08.insert1(customer);
        System.out.println("입력후" + customer);
    }

    @GetMapping("sub12")
    public void method12() {
        Employee employee = new Employee();
        employee.setFirstName("한");
        employee.setLastName("강");
        employee.setBirthDate("1950-01-01");
        employee.setPhoto("picture");
        employee.setNotes("대한민국 최초 노벨상");

        System.out.println("입력전" + employee);
        mapper08.insert2(employee);
        System.out.println("입력후" + employee);
    }
}
