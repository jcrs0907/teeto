package com.project.teeto.classes;

import com.project.teeto.classes.mapper.ClassesMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.teeto.classes.model.Classes;

import java.util.List;


@Service
public class ClassesService {
    @Autowired
    ClassesMapper classesMapper;

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

}
