package com.project.teeto.member.mapper;

import com.project.teeto.member.model.Member;
import org.springframework.stereotype.Repository;

@Repository
public interface MemberMapper {

    //멤버 인서트
    void insertMember(Member member);
}
