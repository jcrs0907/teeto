package com.project.teeto.reply.model;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.type.Alias;

@Alias("reply")
@Getter
@Setter
@JsonInclude(JsonInclude.Include.NON_NULL)
public class Reply {

    private Integer rvwSeqno;       //리뷰 일련번호
    private Integer replySeqno;     //답변 일련번호
    private String replyCtt;        //답변 내용
    private String mentoId;
    private String mentoNm;
    private String creDttm;
}
