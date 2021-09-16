package com.project.teeto.faq.mapper;

import com.project.teeto.faq.model.Faq;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FaqMapper {

    List<Faq> getList(String faqCd);
}
