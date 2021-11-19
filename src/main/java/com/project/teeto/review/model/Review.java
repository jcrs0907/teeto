package com.project.teeto.review.model;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.project.teeto.reply.model.Reply;
import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.type.Alias;

import java.util.List;

@Alias("review")
@Getter
@Setter
@JsonInclude(JsonInclude.Include.NON_NULL)
public class Review {

    private Integer rvwSeqno;               //일련번호
    private String rvwTitle;                //제목
    private String rvwCtt;                  //내용
    private Integer rvwScor;                //점수
    private String replyYn;                 //답변 여부
    private String menteeId;
    private String menteeNm;
    private String classId;

    private Reply replyInfo;                //답변 정보
    private Integer rvwAvg;                 //평점
    private List<Review> reviewList;        //리뷰 목록

}
