package com.project.teeto.auth.model;

import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.type.Alias;

@Alias("auth")
@Getter
@Setter
public class Auth {

    private Integer apvReqSeqno;
    private String apvReqTpCd;
    private String apvReqTpVal;
    private String certNo;
    private String unixTimeApvStrtDttm;
    private String unixTimeApvEndDttm;
    private String certChckYn;

    //인증 체크
    private String checkCertNo;
    private String checkApvTime;

    //로그인
    private String memId;
    private String memTpCd;
    private String loginId;
    private String password;
    private String menteeId;
    private String mentoId;

}
