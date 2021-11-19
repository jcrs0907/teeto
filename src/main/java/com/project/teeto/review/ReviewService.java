package com.project.teeto.review;

import com.project.teeto.reply.ReplyService;
import com.project.teeto.reply.model.Reply;
import com.project.teeto.review.mapper.ReviewMapper;
import com.project.teeto.review.model.Review;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Slf4j
@Service
public class ReviewService {

    @Autowired
    ReviewMapper reviewMapper;

    @Autowired
    ReplyService replyService;

    /**
     * 리뷰 등록
     * @param review
     * @return
     */
    @Transactional
    public boolean insert(Review review) {
        boolean result = false;
        int cnt = 0;

        cnt = reviewMapper.insert(review);
        if(cnt == 1) {
            result = true;
        }

        return result;
    }

    /**
     * 리뷰 목록
     * @param classId
     * @return
     */
    public Review select(String classId) {
        Review review = new Review();
        List<Review> reviewList = null;
        int rvwAvg = 0;

        Reply reply = null;

        reviewList = reviewMapper.select(classId);
        rvwAvg = reviewMapper.getAvg(classId);

        if(reviewList != null) {
            for(Review r : reviewList) {
                if(r.getReplyYn().equals("Y")) {
                    reply = replyService.select(r.getRvwSeqno());
                    r.setReplyInfo(reply);
                }
            }
        }
        review.setReviewList(reviewList);
        review.setRvwAvg(rvwAvg);

        return review;
    }


    /**
     * 리뷰 수정
     * @param review
     * @return
     */
    @Transactional
    public boolean update(Review review) {
        boolean result = false;
        int cnt = 0;
        cnt = reviewMapper.update(review);
        if(cnt == 1) {
            result = true;
        }
        return result;
    }

    /**
     * 리뷰 삭제
     * @param seqno
     * @return
     */
    @Transactional
    public boolean delete(int seqno) {
        boolean result = false;
        int cnt = 0;
        cnt = reviewMapper.delete(seqno);
        if(cnt == 1) {
            result = true;
        }
        return result;
    }

    /**
     * 답변 여부 변경
     * @param review
     */
    @Transactional
    public void updateReplyYn(Review review) {
        reviewMapper.updateReplyYn(review);
    }

}
