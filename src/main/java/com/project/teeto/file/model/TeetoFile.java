package com.project.teeto.file.model;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.type.Alias;

@Alias("teetoFile")
@Getter
@Setter
@Builder
public class TeetoFile {

    private Integer seqno;
    private String groupCd;
    private String fileNm;
    private String extension;
    private String path;
    private Long size;

}
