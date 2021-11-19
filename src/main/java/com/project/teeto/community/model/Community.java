package com.project.teeto.community.model;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Alias("community")
@Getter
@Setter
@JsonInclude(JsonInclude.Include.NON_NULL)
public class Community {

    /**
     * 커뮤니티
     */
    private Integer cmmtSeqno;                  //일련번호
    private String cmmtTpCd;                    //타입 코드
    private String cmmtTpCdNm;                  //타입 코드 명
    private String memId;                       //회원 ID
    private String menteeId;                    //멘티 ID
    private String mentoId;                     //멘토 ID
    private String cmmtTitle;                   //제목
    private String cmmtCtt;                     //내용
    private Integer cmmtFileSeqno;              //파일 일련번호
    private Integer cmmtViewCnt;                //조회 수
    private String creDttm;                     //생성 일시

    private String nickName;                    //닉네임
    private MultipartFile cmmtImgFile;          //이미지 파일
    private String cmmtImgFileName;             //이미지 파일 명
    private String cmmtImgFilePath;             //이미지 파일 경로
    private String cmmtFileDeleteYn = "N";      //파일 삭제 여부

    private Integer cmmtCnt;                    //글 수
    private Integer cmmtCmtCnt;                 //댓글 수

    private Integer cmmtCmtSeqno;               //댓글 일련번호
    private String cmmtCmtCtt;                  //댓글 내용

    private Integer myCommunityCnt;             //내가 쓴 글 수
    private List<Community> communityList;      //목록
    private List<Community> myCommunityList;    //내가 쓴 목록
    private List<Community> commentList;        //댓글 목록

}
