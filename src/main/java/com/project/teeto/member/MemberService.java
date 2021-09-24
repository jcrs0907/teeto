package com.project.teeto.member;

import com.project.teeto.member.mapper.MemberMapper;
import com.project.teeto.member.model.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {
    @Autowired
    MemberMapper memberMapper;

    //회원 등록
    public int insertMember(Member member) {
//        Member member = new Member();
//        member.setMemId();
        memberMapper.insertMember(member);
        return 1;

    }
}