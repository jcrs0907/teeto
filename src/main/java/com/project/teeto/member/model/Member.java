package com.project.teeto.member.model;

import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;

@Alias("member")
@Getter
@Setter
public class Member {

    /**
     * 회원
     */
    private String memId;
    private String memNm;
    private String memEmail;
    private String memTel;
    private MultipartFile memProfileFile;
    private Integer memProfileFileSeqno;
    private String memProfileFileName;
    private String memProfileFilePath;
    private String memTpCd;
    private String nickName;
    private String creDttm;


    /**
     * 로그인정보
     */
    private String loginId;
    private String password;
    private String chgPassword;


    /**
     * 탈퇴
     */
    private Integer secessionSeqno;
    private String secessionTpCd;
    private String secessionReason;

}
