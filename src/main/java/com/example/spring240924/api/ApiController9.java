package com.example.spring240924.api;

import lombok.RequiredArgsConstructor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.oauth2.jwt.JwtClaimsSet;
import org.springframework.security.oauth2.jwt.JwtEncoder;
import org.springframework.security.oauth2.jwt.JwtEncoderParameters;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.Instant;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/main9")
public class ApiController9 {

    final JwtEncoder jwtEncoder;

    @GetMapping("sub1")
    public String sub1() {
        System.out.println("ApiController9.sub1");

        JwtClaimsSet claims = JwtClaimsSet.builder()
                .issuer("self") // 누가
                .subject("kim") // for 누구
                .issuedAt(Instant.now()) // 언제 생성
                .expiresAt(Instant.now().plusSeconds(3600)) // 언제까지
//                .claim("scope", "admin manager user") // 권한
                .build();

        return jwtEncoder
                .encode(JwtEncoderParameters.from(claims))
                .getTokenValue();
    }

    // 누구나 접근 가능
    @GetMapping("sub2")
    public String sub2() {
        return "누구나 접근 가능";
    }

    // 로그인 한 사람만 접근 가능
    @GetMapping("sub3")
    @PreAuthorize("isAuthenticated()")
    public String sub3() {
        return "로그인 한 사람만 접근 가능";
    }

    @GetMapping("sub4")
    public String sub4() {
        System.out.println("ApiController9.sub1");

        JwtClaimsSet claims = JwtClaimsSet.builder()
                .issuer("self") // 누가
                .subject("kim") // for 누구
                .issuedAt(Instant.now()) // 언제 생성
                .expiresAt(Instant.now().plusSeconds(3600)) // 언제까지
                .claim("scope", "admin") // 권한
                .build();

        return jwtEncoder
                .encode(JwtEncoderParameters.from(claims))
                .getTokenValue();
    }

    @GetMapping("sub5")
    public String sub5() {
        System.out.println("ApiController9.sub1");

        JwtClaimsSet claims = JwtClaimsSet.builder()
                .issuer("self") // 누가
                .subject("kim") // for 누구
                .issuedAt(Instant.now()) // 언제 생성
                .expiresAt(Instant.now().plusSeconds(3600)) // 언제까지
                .claim("scope", "manager") // 권한
                .build();

        return jwtEncoder
                .encode(JwtEncoderParameters.from(claims))
                .getTokenValue();
    }

    @GetMapping("sub6")
    public String sub6() {
        System.out.println("ApiController9.sub1");

        JwtClaimsSet claims = JwtClaimsSet.builder()
                .issuer("self") // 누가
                .subject("kim") // for 누구
                .issuedAt(Instant.now()) // 언제 생성
                .expiresAt(Instant.now().plusSeconds(3600)) // 언제까지
                .claim("scope", "admin manager") // 권한
                .build();

        return jwtEncoder
                .encode(JwtEncoderParameters.from(claims))
                .getTokenValue();
    }

    @GetMapping("sub7")
    @PreAuthorize("hasAuthority('SCOPE_admin')")
    public String sub7() {
        return "admin only";
    }

    @GetMapping("sub8")
    @PreAuthorize("hasAuthority('SCOPE_manager')")
    public String sub8() {
        return "manager only";
    }

    @GetMapping("sub9")
    @PreAuthorize("hasAnyAuthority('SCOPE_admin', 'SCOPE_manager')")
    public String sub9() {
        return "admin or manager only";
    }
}
