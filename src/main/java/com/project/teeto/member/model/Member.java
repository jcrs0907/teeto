package com.project.teeto.member.model;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;

@Alias("member")
@Getter
@Setter
@JsonInclude(JsonInclude.Include.NON_NULL)
public class Member {

    /**
     * 회원
     */
    private String memId;                       //회원 ID
    private String memNm;                       //회원 명
    private String memEmail;                    //이메일
    private String memTel;                      //전화번호
    private MultipartFile memProfileFile;       //프로필 파일
    private Integer memProfileFileSeqno;        //프로필 파일 일련번호
    private String memProfileFileName;          //프로필 파일명
    private String memProfileFilePath;          //프로필 경로
    private String memTpCd;                     //회원 타입 코드
    private String nickName;                    //닉네임
    private String creDttm;


    /**
     * 로그인정보
     */
    private String loginId;                     //로그인 ID
    private String password;                    //비밀번호
    private String chgPassword;                 //변경할 비밀번호


    /**
     * 탈퇴
     */
    private Integer secessionSeqno;             //탈퇴 일련번호
    private String secessionTpCd;               //탈퇴 타입 코드
    private String secessionReason;             //탈퇴 사유

}
