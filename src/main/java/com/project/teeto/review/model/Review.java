package com.project.teeto.review.model;

import com.project.teeto.reply.model.Reply;
import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.type.Alias;

@Alias("review")
@Getter
@Setter
public class Review {

    private Integer rvwSeqno;
    private String menteeId;
    private String menteeNm;
    private String classId;
    private String rvwTitle;
    private String rvwCtt;
    private String rvwScor;
    private String replyYn;

    private Reply replyInfo;

}
