package com.project.teeto.classes;

import com.project.teeto.classes.mapper.ClassesMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.teeto.classes.model.Classes;


@Service
public class ClassesService {
    @Autowired
    ClassesMapper classesMapper;

    public boolean insert(Classes classes){
        boolean result = false;


        //클래스 신청
        classesMapper.insertClass(classes);

        //클래스 프로세스 테이블

        //클래스에서 프로세스 테이블에 넣을 데이터 꺼내서 리스트에 넣음

        //클래스 상세 테이블
        return result;
    }

}
