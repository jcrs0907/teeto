package com.project.teeto.reply.mapper;

import com.project.teeto.reply.model.Reply;
import org.springframework.stereotype.Repository;

@Repository
public interface ReplyMapper {

    Reply select(int rvwSeqno);

    int insert(Reply reply);

    int update(Reply reply);

    int delete(int replySeqno);
}
