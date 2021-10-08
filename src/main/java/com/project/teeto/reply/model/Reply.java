package com.project.teeto.reply.model;

import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.type.Alias;

@Alias("reply")
@Getter
@Setter
public class Reply {

    private Integer rvwSeqno;
    private Integer replySeqno;
    private String mentoId;
    private String mentoNm;
    private String replyCtt;
    private String creDttm;
}
