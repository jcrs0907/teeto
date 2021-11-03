package com.project.teeto.review;

import com.project.teeto.auth.AuthService;
import com.project.teeto.review.model.Review;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Slf4j
@Controller
@RequestMapping("/review")
public class ReviewController {

    @Autowired
    ReviewService reviewService;

    @Autowired
    AuthService authService;

    /**
     * 리뷰 등록
     * @param review
     * @return
     */
    @PostMapping()
    @ResponseBody
    public boolean insert(Review review, HttpServletRequest req) {
        log.info(String.format("[Insert Review] Title : %s", review.getRvwTitle()));
        review.setMenteeId(authService.getSession(req).getMenteeId());
        return reviewService.insert(review);
    }


    /**
     * 리뷰 목록
     * @param classId
     * @return
     */
    @GetMapping("/{classId}")
    @ResponseBody
    public List<Review> select(@PathVariable String classId) {
        return reviewService.select(classId);
    }

    /**
     * 리뷰 수정
     * @param review
     * @return
     */
    @PatchMapping("/{rvwSeqno}")
    @ResponseBody
    public boolean update(Review review, HttpServletRequest req) {
        log.info(String.format("[Update Review] Seqno : %s", review.getRvwTitle()));
        review.setMenteeId(authService.getSession(req).getMenteeId());
        return reviewService.update(review);
    }

    /**
     * 리뷰 삭제
     * @param rvwSeqno
     * @return
     */
    @DeleteMapping("/{rvwSeqno}")
    @ResponseBody
    public boolean delete(@PathVariable int rvwSeqno) {
        log.info(String.format("[Delete Review] Seqno : %s", rvwSeqno));
        return reviewService.delete(rvwSeqno);
    }
}
