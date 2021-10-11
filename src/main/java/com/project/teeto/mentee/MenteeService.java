package com.project.teeto.mentee;

import com.project.teeto.classes.model.Classes;
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
        mentee.setMenteeNm(member.getNickName());

        menteeMapper.insert(mentee);
    }

    //멘티 좋아요
    public boolean likeClass(Mentee mentee){
        boolean result = false;
        try{
            menteeMapper.likeClass(mentee);
            result = true;

        }catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }


}
