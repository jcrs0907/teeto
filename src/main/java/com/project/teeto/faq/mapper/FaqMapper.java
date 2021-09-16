package com.project.teeto.faq.mapper;

import com.project.teeto.faq.model.FaqVO;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FaqMapper {

    List<FaqVO> getList(String faqCd);
}
