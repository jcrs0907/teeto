package com.project.teeto.mentee.model;

import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.type.Alias;

@Alias("mentee")
@Getter
@Setter
public class Mentee {

    private String memId;
    private String menteeId;
    private String menteeNm;

}
