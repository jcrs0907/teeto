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
     * 메일, 문자 인증번호 발송
     * @param auth
     * @return
     */
    @PostMapping("/code")
    @ResponseBody
    public boolean sendAuthCode(Auth auth) {
        return authService.sendAuthCode(auth);
    }

    /**
     * 인증번호 체크
     * @param auth
     * @return
     */
    @PostMapping("/checkCode")
    @ResponseBody
    public boolean checkAuthCode(Auth auth) {
        boolean result = false;
        if(authService.checkAuthCode(auth)) {
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
     * 로그인
     * @param auth
     * @return
     */
    @PostMapping("/login")
    @ResponseBody
    public boolean login(Auth auth, HttpServletRequest req) {
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
    public boolean checkPassword(Auth auth, HttpServletRequest req) {
        auth.setMemId(authService.getSession(req).getMemId());
        return authService.checkPassword(auth);
    }
}
