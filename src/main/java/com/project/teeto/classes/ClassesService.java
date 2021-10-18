package com.project.teeto.classes;

import com.project.teeto.auth.model.Auth;
import com.project.teeto.classes.mapper.ClassesMapper;
import com.project.teeto.mentee.MenteeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.teeto.classes.model.Classes;

import java.util.List;

import static com.project.teeto.constant.AppConstant.*;


@Service
public class ClassesService {
    @Autowired
    ClassesMapper classesMapper;

    //클래스 등록하기
    public boolean insert(Classes classes){
        boolean result = false;
        try {
        //클래스 id
        String classId = "";
        classId = classesMapper.selClassId();
        classes.setClassId(classId);
        //클래스 신청
        classesMapper.insertClass(classes);


        //클래스 프로세스 Arr
        List<Classes> classesProcessList = null;

        //클래스 상세 Arr
        List<Classes> classesDetailList = null;

        classesProcessList = classes.getClassesProcessList();
        classesDetailList = classes.getClassesDetailList();

        for(Classes cl : classesProcessList) {
            cl.setClassId(classes.getClassId());
            classesMapper.insertClassProcess(cl);
        }

        for(Classes cl : classesDetailList) {
            cl.setClassId(classes.getClassId());
            classesMapper.insertClassDetail(cl);
        }
            result = true;
        }catch (Exception e) {
            e.printStackTrace();
        }
        //클래스 상세 테이블
        return result;
    }

    //클래스 수정
    public boolean update(Classes classes){
        boolean result = false;
        Classes classes1 = new Classes();
        //클래스 프로세스 Arr
        List<Classes> classesProcessList = null;
        //클래스 상세 Arr
        List<Classes> classesDetailList = null;

        //리스트였는데..
        //Detail 타이틀이나 파일 값이 변경 되었을 경우
        //파일 값이 변경 되었을 경우
        //파일 Update 시퀀스 set
        //매퍼 안에서 분기 처리(<if>)
        classesProcessList = classes.getClassesProcessList();
        classesDetailList = classes.getClassesDetailList();

        try {
        //classesDetailList가 존재할 경우
        if(classesDetailList != null){
            for(Classes cl : classesDetailList) {
                cl.setClassId(classes.getClassId());
                String classDetailDeleteYn = cl.getClassDetailDeleteYn();

                if(classDetailDeleteYn.equals("Y")) {
                    classesMapper.deleteClassDetail(cl);
                }

                if((cl.getClassDetailTitle() != null && !cl.getClassDetailTitle().equals("")) ||
                        cl.getClassFile() != null ){

                    if(cl.getClassFile() != null){
                        //파일 Update 시퀀스 set
                    }


                    if(cl.getClassDetailSeqno() != null){
                        classesMapper.updateClassDetail(cl);
                    }else{
                        classesMapper.insertClassDetail(cl);
                    }

                }
            }
        }

//        //classesProcessList가 존재할 경우
        if(classesProcessList != null){
            for(Classes cl : classesProcessList) {
                cl.setClassId(classes.getClassId());
                String classProcessDeleteYn = cl.getClassProcessDeleteYn();

                if(classProcessDeleteYn.equals("Y")){
                    classesMapper.deleteClassProcess(cl);
                }

                if((cl.getClassProcessTitle() != null && !cl.getClassProcessTitle().equals(""))
                        || cl.getClassProcessDesc() != null && !cl.getClassProcessDesc().equals("")){

                    if(cl.getClassProcessSeqno() != null){
                        classesMapper.updateClassProcess(cl);
                    }else{
                        classesMapper.insertClassProcess(cl);
                    }

                }
            }
        }

        classesMapper.updateClass(classes);
        result = true;
        }catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }

    //클래스 삭제하기
    public boolean delete(Classes classes){
        boolean result = false;

        classesMapper.deleteClassProcess(classes);
        classesMapper.deleteClassDetail(classes);
        classesMapper.deleteClass(classes);
        //멘티 찜 클래스 목록 삭제
        classesMapper.deleteLikeClass(classes);

        result = true;
        return result;
    }

    //클래스 상세 출력
    public Classes classDetail(String classId){
        Classes classes = new Classes();
        List<Classes> detailList = null;
        List<Classes> processList = null;
        try {

            classes = classesMapper.selectClassAll(classId);
            detailList = classesMapper.selectClassDetail(classId);
            processList = classesMapper.selectClassProcess(classId);
            classes.setClassesDetailList(detailList);
            classes.setClassesProcessList(processList);

        }catch (Exception e) {
            e.printStackTrace();
        }

        return classes;
    }

    //클래스 검색
    public List<Classes> selectClasses(Classes classes, Auth auth){
        List<Classes> list = null;
        //클래스 객체에 저장된 코드
        String classSearchCd = classes.getClassesSearchTpCd();

        if(classes.getClassesSearchMCd() != null && classes.getClassesSearchMCd().equals(MEM_TP_CD_MENTEE)){
            classes.setMenteeId(auth.getMenteeId());
        }

        if(classes.getClassesSearchMCd() != null && classes.getClassesSearchMCd().equals(MEM_TP_CD_MENTO)){
            classes.setMentoId(auth.getMentoId());

        }
        if(classSearchCd.equals(CLASS_SEARCH_TP_CD_DATE)){
            if(classes.getSearchEndDate() == null || classes.getSearchEndDate().equals("")){
                classes.setSearchEndDate(classes.getSearchStartDate());
            }
        }

        list = classesMapper.selectClassesSearch(classes);

        return list;
    }
}
