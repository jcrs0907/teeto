package com.project.teeto.mentee;

import com.project.teeto.member.model.Member;
import com.project.teeto.mentee.mapper.MenteeMapper;
import com.project.teeto.mentee.model.Mentee;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Slf4j
@Service
public class MenteeService {

    @Autowired
    MenteeMapper menteeMapper;

    @Transactional
    public void insert(Member member) {
        Mentee mentee = new Mentee();
        mentee.setMemId(member.getMemId());
//        mentee.setMenteeId("MTE-00000001");
        mentee.setMenteeNm(member.getNickName());

        menteeMapper.insert(mentee);
    }
}
