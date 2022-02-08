package com.project.teeto;


import com.project.teeto.auth.AuthService;
import com.project.teeto.classes.ClassesService;
import com.project.teeto.classes.model.Classes;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Slf4j
@Controller
@RequestMapping("/")
public class MainController {

    @Autowired
    ClassesService classesService;

    @Autowired
    AuthService authService;

    @GetMapping
    public String main() {
        return "index";
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @GetMapping("/signup")
    public String signup() {
        return "signup";
    }

    @GetMapping("/reset-password/request")
    public String resetPassword() {
        return "resetPassword";
    }

    @GetMapping("/community/list")
    public String communityList() {
        return "communityList";
    }

    @GetMapping("/community/write")
    public String communityWrite() {
        return "communityWrite";
    }

    @GetMapping("/community/detail")
    public String communityDetail() {
        return "communityDetail";
    }

    @GetMapping("/myPage")
    public String myPage() {
        return "myPage";
    }

    @GetMapping("/mento/apply")
    public String mentoApply() {
        return "mentoApply";
    }



}
