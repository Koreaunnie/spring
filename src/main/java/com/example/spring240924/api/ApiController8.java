package com.example.spring240924.api;

import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;

@RestController
@RequestMapping("/api/main8")
public class ApiController8 {

    @PostMapping("sub1")
    public void method1(@RequestParam String city,
                        @RequestParam String country,

                        // 업로드되는 파일 타입
                        @RequestParam MultipartFile file) {
        System.out.println("city = " + city);
        System.out.println("country = " + country);
        // 파일 이름
        System.out.println("file.getOriginalFilename() = " + file.getOriginalFilename());
        // 파일 크기(byte)
        System.out.println("file.getSize() = " + file.getSize());

        // 파일 저장
        try {
            InputStream is = file.getInputStream();
            BufferedInputStream bis = new BufferedInputStream(is);

            String outputFilePath = "C:/Temp/" + file.getOriginalFilename();
            FileOutputStream fos = new FileOutputStream(outputFilePath);
            BufferedOutputStream bos = new BufferedOutputStream(fos);
            try (bis; bos; fos; is;) {
                byte[] buffer = new byte[1024];
                int length;
                while ((length = bis.read(buffer)) != -1) {
                    bos.write(buffer, 0, length);
                }
                bos.flush();
            }

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @PostMapping("sub2")
    public void method2(@RequestParam String title,
                        @RequestParam MultipartFile attached) throws IOException {
        System.out.println("title = " + title);
        System.out.println("attached = " + attached.getOriginalFilename());

        attached.transferTo(new File("C:/Temp/" + attached.getOriginalFilename()));
    }

    @PostMapping("sub3")
    public void method3(@RequestParam String title,
                        @RequestParam(name = "files[]") MultipartFile[] attached) throws IOException {
        for (MultipartFile file : attached) {
            file.transferTo(new File("C:/Temp/" + file.getOriginalFilename()));
        }
    }

    @PostMapping("sub4")
    public void method4(@RequestParam String name,
                        @RequestParam("files[]") MultipartFile[] files) throws IOException {
        for (MultipartFile file : files) {
            file.transferTo(new File("C:/Temp/" + file.getOriginalFilename()));
        }
    }
}