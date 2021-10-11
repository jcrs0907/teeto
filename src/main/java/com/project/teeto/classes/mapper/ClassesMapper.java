package com.project.teeto.classes.mapper;

import com.project.teeto.classes.model.Classes;
import com.project.teeto.mentee.model.Mentee;
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

    //클래스 수정하기
    void updateClass(Classes classes);
    void updateClassProcess(Classes classes);
    void updateClassDetail(Classes classes);

    //클래스 삭제하기
    void deleteClassProcess(Classes classes);
    void deleteClassDetail(Classes classes);
    void deleteClass(Classes classes);
    void deleteLikeClass(Classes classes);


}