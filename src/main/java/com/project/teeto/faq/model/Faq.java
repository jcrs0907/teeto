package com.project.teeto.faq.model;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.type.Alias;

@Alias("faq")
@Getter
@Setter
@JsonInclude(JsonInclude.Include.NON_NULL)
public class Faq {
    private Integer faqSeqno;       //시퀀스
    private String faqQuestion;     //질문
    private String faqCd;           //타입코드
    private String faqAnswer;       //답변
}
