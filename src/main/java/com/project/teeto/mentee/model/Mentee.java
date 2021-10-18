package com.project.teeto.mentee.model;

import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.type.Alias;

@Alias("mentee")
@Getter
@Setter
public class Mentee {
    private int classLikeSeqno;
    private String memId;
    private String menteeId;
    private String menteeNm;
    private String classId;

    //클래스 신청하기
    //결제 내역
    private int paymentSeqno;
    private String paymentTpCd;
    private String paymentPrice;
    private String classApplDate;


    //member type
    private String memberTypeCode;



}
