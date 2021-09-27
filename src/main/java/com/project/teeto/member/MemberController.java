package com.project.teeto.member;

import com.project.teeto.member.model.Member;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Slf4j
@Controller
@RequestMapping("member")
public class MemberController {

    @Autowired
    MemberService memberService;

    @GetMapping("/signup")
    public String signUp() {
        return "/signup";
    }


    /**
     * 이메일 중복 체크
     * @param email
     * @return
     */
    @GetMapping(value = "/checkEmailUse")
    @ResponseBody
    public boolean checkEmailUse(String email) {
       return memberService.checkEmailUse(email);
    }


    /**
     * 닉네임 중복 체크
     * @param nickName
     * @return
     */
    @GetMapping(value = "/checkNickNameUse")
    @ResponseBody
    public boolean checkNickNameUse(String nickName) {
        return memberService.checkNickNameUse(nickName);
    }


    /**
     * 회원가입
     * @param member
     * @return
     */
    @PostMapping(value = "/register", produces = {"application/json;charset=utf-8"})
    @ResponseBody
    public boolean register(@ModelAttribute Member member) {
        return memberService.insert(member);
    }
}
