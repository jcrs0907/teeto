package com.project.teeto;


import lombok.extern.slf4j.Slf4j;
import org.apache.maven.model.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j
@Controller
@RequestMapping("/")
public class MainController {

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

    @GetMapping("/classes/list")
    public String classesList() {
        return "classesList";
    }

    @GetMapping("/classes/detail")
    public String classesDetail() {
        return "classesDetail";
    }

    @GetMapping("/classes/apply")
    public String classesApply() {
        return "classesApply";
    }

}
