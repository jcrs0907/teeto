package com.project.teeto.auth;

import com.project.teeto.auth.model.Auth;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Slf4j
@Controller
@RequestMapping("auth")
public class AuthController {

    @Autowired
    AuthService authService;


    @GetMapping("/mailTest")
    public String mailTest(){
        return "mailTest";
    }


    /**
     * ajax 메일 발송
     * @param email
     * @return
     */
    @PostMapping(value = "/sendMail", produces = {"application/json;charset=utf-8"})
    @ResponseBody
    public String sendAuthMail(String email) {
        //TODO 문자발송시 메소드변경, 분기처리
        String result = "";
        authService.sendAuthMail(email);
        result = "{\"process\" : \"send mail success\"}";
        return result;
    }

    /**
     * 인증번호 체크
     * @param auth
     * @return
     */
    @PostMapping(value = "/checkCertNo", produces = {"application/json;charset=utf-8"})
    @ResponseBody
    public boolean checkCertNo(@ModelAttribute Auth auth) {
        boolean result = false;
        if(authService.checkCertNo(auth)) {
            result = true;
        }
        return result;
    }

    /**
     * 로그인 폼
     */
    @GetMapping("/login")
    public String loginForm() {
        return "login";
    }

//    /**
//     * ajax 로그인
//     * @param auth
//     * @return
//     */
//    @PostMapping("/ajax/login")
//    @ResponseBody
//    public String login(@ModelAttribute Auth auth) {
//        String result = "";
////        result = authService.login(auth);
//    }

}
