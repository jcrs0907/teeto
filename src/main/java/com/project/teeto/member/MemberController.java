package com.project.teeto.member;

import com.project.teeto.member.model.Member;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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
    public String register(@ModelAttribute Member member) {
        String result = "";

        memberService.insertMember(member);

        result = "{\"res\" : \"join success\"}";
        return result;
    }
}
