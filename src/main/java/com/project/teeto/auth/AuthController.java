package com.project.teeto.auth;

import com.project.teeto.auth.model.Auth;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
    @PostMapping("/sendMail")
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
    @PostMapping("/checkCertNo")
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

    /**
     * ajax 로그인
     * @param auth
     * @return
     */
    @PostMapping("/login")
    @ResponseBody
    public boolean login(@ModelAttribute Auth auth, HttpServletRequest req) {
        Auth member = null;
        member = authService.login(auth);
        if(member.getMemId() != null) {
            HttpSession session = req.getSession();
            session.setAttribute("member", member);
            return true;
        }else {
            return false;
        }
    }

    /**
     * 비밀번호 체크
     * @param auth
     * @return
     */
    @PostMapping("/checkPassword")
    @ResponseBody
    public boolean checkPwd(@ModelAttribute Auth auth) {
        return authService.checkPassword(auth);
    }
}
