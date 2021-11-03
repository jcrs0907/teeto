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

    private String memId;                       //회원 ID
    private String classId;                     //클래스 ID
    private String mentoId;                     //멘토 ID
    private String mentoNm;                     //멘토 명
    private String mentoDstn;                   //멘토 설명
    private String menteeId;                    //멘티 ID
    private String classCtgrCd;                 //카테고리 코드
    private String classDetailCtgrCd;           //상세 카테고리 코드
    private String classNm;                     //클래스 명
    private Integer classFileSeqno;             //파일 일련번호
    private String classTitle;                  //제목
    private String classDstn;                   //설명
    private String classStrtDate;               //시작 일자
    private String classStrtTime;               //시작 시간
    private String classDrtnTime;               //소요 시간
    private Integer classCurrentMte;            //현재 멘티 수
    private Integer classMaxMte;                //최대 멘티 수
    private String classPlace;                  //장소
    private String classCharge;                 //금액
    private String classEndYn;                  //종료여부
    private String creDttm;                     //생성 일자
    private String likeCnt;                     //찜 수

    private MultipartFile classFile;            //파일
    private String classFilePath;               //파일 경로
    private String classFileNm;                 //파일 명


    private List<Classes> classesProcessList;   //프로세스 목록
    private List<Classes> classesDetailList;    //상세 목록
    private String classProcessDeleteYn= "N";   //프로세스 삭제 여부
    private String classDetailDeleteYn= "N";    //디테일 삭제 여부

    /**
     *  프로세스
     */
    private Integer classProcessSeqno;          //프로세스 일련번호
    private String classProcessTitle;           //프로세스 제목
    private String classProcessDesc;            //프로세스 설명

    /**
     *  디테일
     */
    private Integer classDetailSeqno;           //상세 일련번호
    private String classDetailTitle;            //상세 제목
    private MultipartFile classDetailFile;      //상세 파일
    private Integer classDetailFileSeqno;       //상세 파일 일련번호
    private String classDetailFilePath;         //상세 파일 경로
    private String classDetailFileNm;           //상세 파일 명

    /**
     *  카테고리
     */
    private String classHgrkCtgrCd;
    private String classCtgrCdNm;
    private String classHrgkCtgrCdNm;
    private String srtSeq;

    /**
     *  검색
     */
    private String searchStartDate;
    private String searchEndDate;
    private String classesSearchTpCd;
    private String classesSearchMCd;
    private String searchText;

}
