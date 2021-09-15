package com.project.teeto.faq;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/faq")
public class FAQController {

    @GetMapping
    public String test() {
        return "faq";
    }

}
