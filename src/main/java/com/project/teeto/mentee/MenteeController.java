package com.project.teeto.mentee;

import com.project.teeto.mentee.model.Mentee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/mentee")
public class MenteeController {

    @Autowired
    MenteeService menteeService;

    //멘티 클래스 찜
    @PostMapping(value = "/likeClass", produces = {"application/json;charset=utf-8"})
    @ResponseBody
    public boolean likeClass(@ModelAttribute Mentee mentee) {
        return menteeService.likeClass(mentee);
    }




}
