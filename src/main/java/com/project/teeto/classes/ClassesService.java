package com.project.teeto.classes;

import com.project.teeto.classes.mapper.ClassesMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.teeto.classes.model.Classes;
import java.text.SimpleDateFormat;

import java.util.List;
import java.util.Date;


@Service
public class ClassesService {
    @Autowired
    ClassesMapper classesMapper;

    //클래스 등록하기
    public boolean insert(Classes classes){
        boolean result = false;

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

        //클래스 상세 테이블
        return result;
    }


    //날짜별 검색
    public List<Classes> selectDateClass(String startDate, String endDate) {
        Classes classes = new Classes();
        classes.setSearchStartDate(startDate);
        classes.setSearchEndDate(endDate);
        List<Classes> classList = classesMapper.selectDateClass(classes);
        return classList;
    }

    //인기있는 클래스
    public List<Classes> selectLikeClass(){
        List<Classes> likeClassList = classesMapper.selectLikeClass();
        return likeClassList;
    }

    //카테고리별 클래스
    public List<Classes> selectCategoryClass(String categoryCd){
        List<Classes> categoryClassList = classesMapper.selectCategoryClass(categoryCd);
        return categoryClassList;
    }

    //클래스 수정하기
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
                System.out.println("getClassProcessTitle"+cl.getClassProcessTitle());
                System.out.println("getClassProcessSeqno"+cl.getClassProcessSeqno());
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
//
//        classesMapper.updateClass(classes);
        result = true;
        }catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }


}
