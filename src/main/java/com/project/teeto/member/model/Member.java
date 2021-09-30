package com.project.teeto.member.model;

import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.type.Alias;

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
    private File memImgFile;
    private String memProfileFileSeqno;
    private String memTpCd;
    private String nickName;


    /**
     * 로그인정보
     */
    private String loginId;
    private String password;


    /**
     * 탈퇴
     */
    private int secessionSeqno;
    private String secessionTpCd;
    private String secessionReason;

}
