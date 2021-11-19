package com.project.teeto.terms.model;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.type.Alias;

@Alias("terms")
@Getter
@Setter
@JsonInclude(JsonInclude.Include.NON_NULL)
public class Terms {

    private String memId;
    private String termsCd;         //약관 코드
    private String termsTitle;      //약관 제목
    private String termsCtt;        //약관 전문
}
