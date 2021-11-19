package com.project.teeto.mento.model;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.type.Alias;

@Alias("mento")
@Getter
@Setter
@JsonInclude(JsonInclude.Include.NON_NULL)
public class Mento {

    private String memId;
    private String mentoId;
    private String mentoTel;
    private String mentoNm;
    private String mentoDstn;
    private String mentoBank;
    private String mentoAccount;

}
