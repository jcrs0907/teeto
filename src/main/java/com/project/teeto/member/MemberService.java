package com.project.teeto.member;

import com.project.teeto.auth.AuthService;
import com.project.teeto.member.mapper.MemberMapper;
import com.project.teeto.member.model.Member;
import com.project.teeto.mentee.MenteeService;
import com.project.teeto.pwd.PwdService;
import com.project.teeto.terms.TermsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class MemberService {

    @Autowired
    MemberMapper memberMapper;

    @Autowired
    AuthService authService;

    @Autowired
    MenteeService menteeService;

    @Autowired
    TermsService termsService;

    @Autowired
    PwdService pwdService;

    /**
     * 이메일 중복체크
     * @param email
     * @return
     */
    public boolean checkEmailUse(String email) {
        boolean result = false;
        int cnt = 0;

        cnt = memberMapper.checkEmailUse(email);
        if(cnt == 0) {
            result = true;
        }
        return result;
    }

    /**
     * 닉네임 중복체크
     * @param nickName
     * @return
     */
    public boolean checkNickNameUse(String nickName) {
        boolean result = false;
        int cnt = 0;

        cnt = memberMapper.checkNickNameUse(nickName);
        if(cnt == 0) {
            result = true;
        }
        return result;
    }


    /**
     * 회원 가입
     * @param member
     * @return
     */
    @Transactional
    public boolean insert(Member member) {

        boolean result = false;
        String memId = "";
        String pwd = "";
        try {
            //회원ID
            memId = memberMapper.selJoinMemId();
            member.setMemId(memId);
            //암호화
            pwd = pwdService.encodePassword(member.getPassword());
            member.setPassword(pwd);

            memberMapper.insert(member);
            authService.insertLoginInfo(member);
            menteeService.insert(member);
            termsService.insertMemTermsInfo(member.getMemId());

            result = true;
        }catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }


    /**
     * 탈퇴
     * @param member
     * @return
     */
    public boolean delete(Member member) {
        boolean result = false;
        String pwd = "";

        pwd = memberMapper.selMemPwd(member.getMemId());

        //비번체크
        if(pwdService.matchPassword(member.getPassword(), pwd)) {
            //TODO 추후 관련 테이블 DB변경 필요
            //탈퇴정보
            memberMapper.insertSecInfo(member);
            //회원
            memberMapper.delete(member);
            result = true;
        }

        return result;
    }


    /**
     * 비밀번호 변경
     * @param member
     * @return
     */
    public boolean changePassword(Member member) {
        boolean result = false;
        int cnt = 0;

        String pwd = pwdService.encodePassword(member.getChgPassword());
        member.setPassword(pwd);
        cnt = memberMapper.updatePassword(member);
        if(cnt ==1) {
            result = true;
        }
        return result;
    }
}
