package com.project.teeto.classes.model;

import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

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
    private Integer classFileSeqno;
    private String classTitle;
    private String classDstn;
    private String classStrtDate;
    private String classStrtTime;
    private String classDrtnTime;
    private Integer classCurrentMte;
    private Integer classMaxMte;
    private String classPlace;
    private String classCharge;
    private String classEndYn;
    private MultipartFile classFile;
    private Date creDttm;
    private Date uptDttm;

    //TB_CLASS_PROCESS_L
    private Integer classProcessSeqno;
    private String classProcessTitle;
    private String classProcessDesc;

    //TB_CLASS_DETAIL_L
    private Integer classDetailSeqno;
    private String classDetailTitle;
    private String classDetailFileSeqno;

    //TB_CLASS_CATEGORY_L
    private String classHgrkCtgrCd;
    private String classCtgrCdNm;
    private String classHrgkCtgrCdNm;
    private String srtSeq;

    private String mentoDstn;

    //클래스 프로세스 리스트 생성
    private List<Classes> classesProcessList;

    //클래스 디테일 리스트 생성
    private List<Classes> classesDetailList;

    //클래스 날짜별 검색
    private String searchStartDate;
    private String searchEndDate;
    private String mentoNm;
    private String likeCnt;

    //클래스 프로세스 삭제 여부
    private String classProcessDeleteYn= "N";

    //클래스 디테일 업데이트 여부
    private String classDetailDeleteYn= "N";

}
