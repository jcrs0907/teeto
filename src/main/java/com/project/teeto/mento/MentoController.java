package com.project.teeto.mento;

import com.project.teeto.mento.model.Mento;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Slf4j
@Controller
@RequestMapping("/mento")
public class MentoController {

    @Autowired
    MentoService mentoService;

    //멘토 신청하기 페이지
    @GetMapping("/applyForm")
    public String mento(){
        return "mentoApplyForm";
    }

    @PostMapping(value = "/apply", produces = {"application/json;charset=utf-8"})
    @ResponseBody
    public boolean insert(@ModelAttribute Mento mento) {
        return mentoService.insert(mento);
    }

    @GetMapping("/checkNm")
    @ResponseBody
    public boolean checkNm(String mentoNm){
        return mentoService.checkNm(mentoNm);
    }
}
