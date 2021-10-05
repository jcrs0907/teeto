package com.project.teeto.classes.mapper;

import com.project.teeto.classes.model.Classes;
import com.project.teeto.faq.model.Faq;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Date;


@Repository

public interface ClassesMapper {
    //클래스 신청하기
    void insertClass(Classes classes);
    void insertClassProcess(Classes classes);
    void insertClassDetail(Classes classes);
    String selClassId();

    //클래스 목록 출력
    List<Classes> selectDateClass(Classes classes);


}