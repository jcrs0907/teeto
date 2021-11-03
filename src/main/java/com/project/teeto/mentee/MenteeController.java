package com.project.teeto.mentee;

import com.project.teeto.auth.AuthService;
import com.project.teeto.classes.model.Classes;
import com.project.teeto.mentee.model.Mentee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/mentee")
public class MenteeController {

    @Autowired
    MenteeService menteeService;

    @Autowired
    AuthService authService;

    /**
     * 멘티 클래스 신청
     * @param mentee
     * @param req
     * @return
     */
    @PostMapping("/class")
    @ResponseBody
    public boolean applyClass(Mentee mentee, HttpServletRequest req){
        return menteeService.insertClasses(mentee, authService.getSession(req));
    }

    /**
     * 클래스 찜하기
     * @param mentee
     * @param req
     * @return
     */
    @PostMapping("/class/like")
    @ResponseBody
    public boolean likeClass(Mentee mentee, HttpServletRequest req){
        mentee.setMenteeId(authService.getSession(req).getMenteeId());
        return menteeService.likeClass(mentee);
    }

    /**
     * 찜 해제
     * @param mentee
     * @param req
     * @return
     */
    @DeleteMapping("/class/delete")
    @ResponseBody
    public boolean delete(Mentee mentee, HttpServletRequest req) {
        mentee.setMenteeId(authService.getSession(req).getMenteeId());
        return menteeService.deleteClass(mentee);
    }

    /**
     * 찜한 목록
     * @param req
     * @return
     */
    @GetMapping("/class/like/list")
    @ResponseBody
    public List<Classes> likeClassList(HttpServletRequest req){
        return menteeService.selectClass(authService.getSession(req));
    }

}

