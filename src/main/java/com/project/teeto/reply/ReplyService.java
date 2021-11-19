package com.project.teeto.reply;

import com.project.teeto.auth.model.Auth;
import com.project.teeto.reply.mapper.ReplyMapper;
import com.project.teeto.reply.model.Reply;
import com.project.teeto.review.ReviewService;
import com.project.teeto.review.model.Review;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Slf4j
@Service
public class ReplyService {

    @Autowired
    ReplyMapper replyMapper;

    @Autowired
    ReviewService reviewService;

    /**
     * 답변 상세
     * @param rvwSeqno
     * @return
     */
    public Reply select(int rvwSeqno) {
        Reply reply = null;
        reply = replyMapper.select(rvwSeqno);
        return reply;
    }

    /**
     * 답변 등록
     * @param reply
     * @return
     */
    @Transactional
    public boolean insert(Reply reply, Auth auth) {
        boolean result = false;
        int cnt = 0;
        Review review = new Review();

        reply.setMentoId(auth.getMentoId());
        cnt = replyMapper.insert(reply);
        if(cnt == 1) {
            review.setReplyYn("Y");
            review.setRvwSeqno(reply.getRvwSeqno());
            reviewService.updateReplyYn(review);
            result = true;
        }
        return result;
    }

    /**
     * 답변 수정
     * @param reply
     * @return
     */
    @Transactional
    public boolean update(Reply reply) {
        boolean result = false;
        int cnt = 0;
        cnt = replyMapper.update(reply);
        if(cnt == 1) {
            result = true;
        }
        return result;
    }

    /**
     * 답변 삭제
     * @param reply
     * @return
     */
    @Transactional
    public boolean delete(Reply reply) {
        boolean result = false;
        int cnt = 0;
        Review review = new Review();

        cnt = replyMapper.delete(reply.getReplySeqno());
        if(cnt == 1) {
            review.setReplyYn("N");
            review.setRvwSeqno(reply.getRvwSeqno());
            reviewService.updateReplyYn(review);
            result = true;
        }
        return result;
    }
}
