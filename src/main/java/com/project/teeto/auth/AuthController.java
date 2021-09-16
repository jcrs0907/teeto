package com.project.teeto.auth;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
        String result = "";
        authService.sendAuthMail(email);
        result = "{\"process\" : \"send mail success\"}";
        return result;
    }

}
