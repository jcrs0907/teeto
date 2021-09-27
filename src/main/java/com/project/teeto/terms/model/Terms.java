package com.project.teeto.terms.model;

import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.type.Alias;

@Alias("terms")
@Getter
@Setter
public class Terms {

    private String memId;

    private String termsCd;
    private String termsTitle;
    private String termsCtt;
    private String mndtAgrYn;
}
