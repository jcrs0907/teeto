package com.project.teeto.member.mapper;

import com.project.teeto.member.model.Member;
import org.springframework.stereotype.Repository;

@Repository
public interface MemberMapper {

    void insert(Member member);

    int checkEmailUse(String email);

    int checkNickNameUse(String nickName);

    String selJoinMemId();

    String selMemPwd(String memId);

    void insertSecInfo(Member member);

    void delete(Member member);
}
