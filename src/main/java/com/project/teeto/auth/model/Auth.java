package com.project.teeto.auth.model;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.type.Alias;

@Alias("auth")
@Getter
@Setter
@JsonInclude(JsonInclude.Include.NON_NULL)
public class Auth {

    private Integer apvReqSeqno;            //인증 요청 일련번호
    private String apvReqTpCd;              //인증 요청 타입코드
    private String apvReqTpVal;             //인증 요청 타입값
    private String certNo;                  //인증번호
    private String unixTimeApvStrtDttm;     //유닉스 시간 시작 일시
    private String unixTimeApvEndDttm;      //유닉스 시간 종료 일시
    private String certChckYn;              //인증 체크 여부

    //인증 체크
    private String checkCertNo;             //체크할 인증번호
    private String checkApvTime;            //체크할 인증 유닉스 시간

    //로그인
    private String memId;
    private String memNm;
    private String memTpCd;
    private String loginId;
    private String password;
    private String menteeId;
    private String mentoId;

}
