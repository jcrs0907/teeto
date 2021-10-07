package com.project.teeto.classes.mapper;

import com.project.teeto.classes.model.Classes;
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

    //클래스 날짜별 목록 출력
    List<Classes> selectDateClass(Classes classes);

    //클래스 찜별 목록 출력
    List<Classes> selectLikeClass();

    //클래스 카테고리별 목록 출력
    List<Classes> selectCategoryClass(String categoryCd);

}