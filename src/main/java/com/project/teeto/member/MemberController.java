package com.project.teeto.member;

import com.project.teeto.member.model.Member;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Slf4j
@Controller

public class MemberController {

    @Autowired
    MemberService memberService;

    @GetMapping("/signup")
    public String signUp() {
        return "/signup";
    }



    @PostMapping(value = "/register", produces = {"application/json;charset=utf-8"})
    @ResponseBody
    public String register(Member member) {
        String result = "";

        MemberService.insertMember(member);

        result = "{\"process\" : \"send mail success\"}";
        return result;
    }
}
