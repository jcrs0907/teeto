package com.project.teeto.review.mapper;

import com.project.teeto.review.model.Review;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ReviewMapper {

    int insert(Review review);

    List<Review> select(String classId);

    int update(Review review);

    int delete(int seqno);

    void updateReplyYn(Review review);

}
