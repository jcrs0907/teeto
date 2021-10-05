package com.project.teeto.classes.model;

import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.type.Alias;

import java.util.List;
import java.util.Date;

@Alias("classes")
@Getter
@Setter
public class Classes {
    //클래스 신청하기
    //TB_CLASS
    private String classId;
    private String mentoId;
    private String classCtgrCd;
    private String classDetailCtgrCd;
    private String classNm;
    private int classFileSeqno;
    private String classTitle;
    private String classDstn;
    private String classStrtDate;
    private String classStrtTime;
    private String classDrtnTime;
    private String classCurrentMte;
    private String classMaxMte;
    private String classPlace;
    private String classCharge;
    private String classEndYn;

    //TB_CLASS_PROCESS_L
    private int classProcessSeqno;
    private String classProcessTitle;
    private String classProcessDesc;

    //TB_CLASS_DETAIL_L
    private int classDetailSeqno;
    private String classDetailTitle;
    private String classDetailFileSeqno;

    //TB_CLASS_CATEGORY_L
    private String classHgrkCtgrCd;
    private String classCtgrCdNm;
    private String srtSeq;

    //클래스 프로세스 리스트 생성
    private List<Classes> classesProcessList;

    //클래스 디테일 리스트 생성
    private List<Classes> classesDetailList;

    //클래스 날짜별 검색
    private String searchEndDate;
}
