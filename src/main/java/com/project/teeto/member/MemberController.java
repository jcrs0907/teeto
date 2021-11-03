package com.project.teeto.member;

import com.project.teeto.auth.AuthService;
import com.project.teeto.member.model.Member;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Slf4j
@Controller
@RequestMapping("member")
public class MemberController {

    @Autowired
    MemberService memberService;

    @Autowired
    AuthService authService;


    @GetMapping("/signup")
    public String signUp() {
        return "/signup";
    }


    /**
     * 이메일 중복 체크
     * @param email
     * @return
     */
    @GetMapping("/checkEmailUse")
    @ResponseBody
    public boolean checkEmailUse(String email) {
       return memberService.checkEmailUse(email);
    }


    /**
     * 닉네임 중복 체크
     * @param nickName
     * @return
     */
    @GetMapping("/checkNickNameUse")
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
    public boolean register(Member member) {
        return memberService.insert(member);
    }


    /**
     * 회원 상세
     * @param req
     * @return
     */
    @GetMapping()
    @ResponseBody
    public Member getDetail(HttpServletRequest req) {
        return memberService.getDetail(authService.getSession(req).getMemId());
    }


    /**
     * 회원 수정
     * @param member
     * @return
     */
    @PatchMapping()
    @ResponseBody
    public boolean update(Member member, HttpServletRequest req) {
        member.setMemId(authService.getSession(req).getMemId());
        return memberService.update(member);
    }


    /**
     * 비밀번호 변경
     * @param member
     * @return
     */
    @PostMapping("/changePassword")
    @ResponseBody
    public boolean changePassword(Member member, HttpServletRequest req) {
        member.setMemId(authService.getSession(req).getMemId());
        return memberService.changePassword(member);
    }


    /**
     * 탈퇴
     * @param member
     * @return
     */
    @PostMapping("/secession")
    @ResponseBody
    public boolean secession(Member member, HttpServletRequest req) {
        member.setMemId(authService.getSession(req).getMemId());
        return memberService.delete(member);
    }

}
