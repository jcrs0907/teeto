package com.project.teeto.faq;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j
@Controller
@RequestMapping("/faq")
public class FaqController {

    @Autowired
    FaqService faqService;

    /**
     * 목록
     * @param faqCd
     * @return
     */
    @GetMapping("/{faqCd}")
    public String getList(@PathVariable String faqCd, Model model) {
        model.addAttribute("faqList",faqService.getList(faqCd));
        return "faq";
    }

}
