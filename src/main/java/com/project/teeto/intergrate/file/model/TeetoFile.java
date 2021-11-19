package com.project.teeto.intergrate.file.model;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.type.Alias;

@Alias("teetoFile")
@Getter
@Setter
@Builder
@JsonInclude(JsonInclude.Include.NON_NULL)
public class TeetoFile {

    private Integer seqno;
    private String groupCd;
    private String fileNm;
    private String extension;
    private String path;
    private Long size;

}
