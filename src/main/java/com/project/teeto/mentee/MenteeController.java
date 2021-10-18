package com.project.teeto.mentee;

import com.project.teeto.auth.model.Auth;
import com.project.teeto.classes.model.Classes;
import com.project.teeto.mentee.model.Mentee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/mentee")
public class MenteeController {

    @Autowired
    MenteeService menteeService;

    //멘티 클래스 신청
    @PostMapping("/class/apply")
    @ResponseBody
    public boolean applyClass(@ModelAttribute Mentee mentee,  HttpServletRequest req){
        HttpSession session = req.getSession();
        Auth auth = (Auth)session.getAttribute("member");
        return menteeService.insertClasses(mentee, auth);
    }

    //멘티 클래스 찜
    @PostMapping(value = "/class/like", produces = {"application/json;charset=utf-8"})
    @ResponseBody
    public boolean likeClass(@ModelAttribute Mentee mentee) {
        return menteeService.likeClass(mentee);
    }

    //멘티 클래스 찜 해제
    @DeleteMapping(value="/class/delete", produces = {"application/json;charset=utf-8"})
    @ResponseBody
    public boolean delete(@ModelAttribute Mentee mentee) {
        return menteeService.deleteClass(mentee);
    }

    //찜한 클래스 목록 출력
    @PostMapping("/class/like/list")
    @ResponseBody
    public List<Classes> likeClassList(
            @ModelAttribute Mentee mentee,
            HttpServletRequest req
    ){
        HttpSession session = req.getSession();
        Auth auth = (Auth)session.getAttribute("member");
        return menteeService.selectClass(mentee, auth);
    }

}

