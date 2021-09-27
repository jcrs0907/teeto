package com.project.teeto.member;

import com.project.teeto.auth.AuthService;
import com.project.teeto.member.mapper.MemberMapper;
import com.project.teeto.member.model.Member;
import com.project.teeto.mentee.MenteeService;
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

        try {
            //TODO 오라클 함수 만들기 전까지는 테스트시 수동 ++
//            member.setMemId("MT-00000002");
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
}
