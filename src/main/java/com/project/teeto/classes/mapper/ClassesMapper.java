package com.project.teeto.classes.mapper;

import com.project.teeto.classes.model.Classes;
import com.project.teeto.mentee.model.Mentee;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Date;


@Repository

public interface ClassesMapper {

    /**
     * 등록(신청)
     */
    String selClassId();
    void insertClass(Classes classes);
    void insertClassProcess(Classes classes);
    void insertClassDetail(Classes classes);

    /**
     * 수정
     */
    void updateClass(Classes classes);
    void updateClassProcess(Classes classes);
    void updateClassDetail(Classes classes);
    void updateCurrentMte(Classes classes);
    void deleteFileSeqno(Classes classes);

    /**
     * 삭제
     */
    void deleteProcess(Classes classes);
    void deleteDetail(Classes classes);
    void delete(Classes classes);
    void deleteMteLike(Classes classes);

    /**
     * 상세
     */
    Classes getInfo(String classId);
    List<Classes> getDetailList(String classId);
    List<Classes> getProcessList(String classId);

    List<Classes> getMteLikeList(String menteeId);      //찜한 목록
    List<Classes> getList(Classes classes);             //목록(검색)

}