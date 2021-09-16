package com.project.teeto.faq;

import com.project.teeto.faq.mapper.FaqMapper;
import com.project.teeto.faq.model.Faq;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FaqService {

    @Autowired
    FaqMapper faqMapper;

    public List<Faq> getList(String faqCd) {
        List<Faq> faqList = faqMapper.getList(faqCd);
        return faqList;
    }
}
