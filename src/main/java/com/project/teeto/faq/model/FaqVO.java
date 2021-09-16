package com.project.teeto.faq.model;

import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.type.Alias;

@Alias("faqVO")
@Getter
@Setter
public class FaqVO {
    private int faqSeqno;           //시퀀스
    private String faqQuestion;     //질문
    private String faqCd;           //타입코드
    private String faqAnswer;       //답변
}
