package com.project.teeto.mento.model;

import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.type.Alias;

@Alias("mento")
@Getter
@Setter
public class Mento {
    //멘토 신청하기
    //- 멘토 닉네임
    //- 전화번호(회원 설정에 전화번호 넣었으면 가져오기)
    //- 멘토 소개(선택)
    //- 멘토 은행(필수)
    //- 멘토 계좌(필수)

    private String mentoId;
    private String memId;
    private String mentoTel;
    private String mentoNm;
    private String mentoDSTN;
    private String mentoBank;
    private String mentoAccount;




}
