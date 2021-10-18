package com.project.teeto.mentee;

import com.project.teeto.auth.model.Auth;
import com.project.teeto.classes.ClassesService;
import com.project.teeto.classes.mapper.ClassesMapper;
import com.project.teeto.classes.model.Classes;
import com.project.teeto.member.model.Member;
import com.project.teeto.mentee.mapper.MenteeMapper;
import com.project.teeto.mentee.model.Mentee;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

import static com.project.teeto.constant.AppConstant.MEM_TP_CD_MENTEE;

@Slf4j
@Service
public class MenteeService {

    @Autowired
    MenteeMapper menteeMapper;

    @Autowired
    ClassesMapper classesMapper;

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

    //멘티 좋아요 해제
    public boolean deleteClass(Mentee mentee){
        boolean result = false;
        try{
            menteeMapper.deleteClass(mentee);
            result = true;

        }catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }

    @Transactional
    //멘티 클래스 신청
    public boolean insertClasses(Mentee mentee, Auth auth){
        boolean result = false;
        Classes classes = new Classes();

        if(mentee.getMemberTypeCode() != null && mentee.getMemberTypeCode().equals(MEM_TP_CD_MENTEE)){
            mentee.setMenteeId(auth.getMenteeId());
        }

        //페이먼트 리스트 추가
        if(menteeMapper.insertPayment(mentee)){
            menteeMapper.insertClasses(mentee);

        }

        classes.setClassId(mentee.getClassId());
        //클래스 현재 맨티수 추가
        classesMapper.updateClassesCount(classes);

        result = true;

        return result;
    }

    //찜한 클래스 목록 출력
    public List<Classes> selectClass(Mentee mentee, Auth auth){
        List<Classes> list = null;
        Classes classes = new Classes();

        if(classes.getClassesSearchMCd() != null && classes.getClassesSearchMCd().equals(MEM_TP_CD_MENTEE)){
            classes.setMenteeId(auth.getMenteeId());
        }

        list = classesMapper.selectMenteeClass(classes);
        return list;
    }


}
