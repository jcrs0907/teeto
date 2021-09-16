package com.project.teeto.faq;

import com.project.teeto.faq.mapper.FaqMapper;
import com.project.teeto.faq.model.FaqVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FaqService {

    @Autowired
    FaqMapper faqMapper;

    public List<FaqVO> getList(String faqCd) {
        List<FaqVO> faqList = faqMapper.getList(faqCd);
        return faqList;
    }
}
