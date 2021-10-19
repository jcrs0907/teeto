package com.project.teeto.member;

import com.project.teeto.auth.model.Auth;
import com.project.teeto.member.model.Member;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
    @PostMapping()
    @ResponseBody
    public boolean register(@ModelAttribute Member member) {
        return memberService.insert(member);
    }

    /**
     * 탈퇴
     * @param member
     * @return
     */
    @PostMapping("/secession")
    @ResponseBody
    public boolean secession(@ModelAttribute Member member) {
        return memberService.delete(member);
    }


    /**
     * 비밀번호 변경
     * @param member
     * @return
     */
    @PostMapping("/changePassword")
    @ResponseBody
    public boolean changePassword(@ModelAttribute Member member) {
        return memberService.changePassword(member);
    }


    /**
     * 회원 상세
     * @param req
     * @return
     */
    @GetMapping()
    @ResponseBody
    public Member getDetail(HttpServletRequest req) {
        HttpSession session = req.getSession();
        Auth auth = (Auth)session.getAttribute("member");
        return memberService.getDetail(auth.getMemId());
    }


    /**
     * 회원 수정
     * @param member
     * @return
     */
    @PatchMapping()
    @ResponseBody
    public boolean update(@ModelAttribute Member member) {
        return memberService.update(member);
    }
}
