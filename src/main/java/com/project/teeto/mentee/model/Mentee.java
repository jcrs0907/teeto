package com.project.teeto.mentee.model;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.type.Alias;

@Alias("mentee")
@Getter
@Setter
@JsonInclude(JsonInclude.Include.NON_NULL)
public class Mentee {

    private String memId;
    private String menteeId;
    private String menteeNm;
    private String classId;
    private String useYn;

    /**
     * 찜
     */
    private Integer classLikeSeqno;     //찜 일련번호

    /**
     * 결제, 클래스 신청
     */
    private Integer paymentSeqno;       //결제 일련번호
    private String paymentTpCd;         //결제 타입 코드
    private String paymentPrice;        //결제 가격
    private String classApplDate;       //클래스 신청 일자

}
