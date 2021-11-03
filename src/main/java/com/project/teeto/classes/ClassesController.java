package com.project.teeto.classes;

import com.project.teeto.auth.AuthService;
import com.project.teeto.auth.model.Auth;
import com.project.teeto.classes.model.Classes;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.util.List;

@Slf4j
@Controller
@RequestMapping("class")
public class ClassesController {

    @Autowired
    ClassesService classesService;

    @Autowired
    AuthService authService;

    /**
     * 클래스 신청(등록)
     * @param classes
     * @return
     */
    @PostMapping()
    @ResponseBody
    public boolean insert(Classes classes, HttpServletRequest req) {
        log.info(String.format("[Insert Class] ClassNm : %s", classes.getClassNm()));
        return classesService.insert(classes, authService.getSession(req));
    }

    /**
     * 클래스 수정
     * @param classes
     * @return
     */
    @PatchMapping()
    @ResponseBody
    public boolean update(Classes classes) {
        log.info(String.format("[Update Class] ClassId : %s", classes.getClassId()));
        return classesService.update(classes);
    }

    /**
     * 클래스 삭제
     * @param classes
     * @return
     */
    @PostMapping("/{classId}")
    @ResponseBody
    public boolean delete(Classes classes) {
        log.info(String.format("[Delete Class] ClassId : %s", classes.getClassId()));
        return classesService.delete(classes);
    }

    /**
     * 클래스 목록(검색)
     * @param classes
     * @param req
     * @return
     */
    @PostMapping(value = "/list")
    @ResponseBody
    public List<Classes> searchClasses(Classes classes, HttpServletRequest req) {
        return classesService.getList(classes, authService.getSession(req));
    }



    /**
     * JSP
     */
    //상세
    @GetMapping("/detail/{classId}")
    public String detail(@PathVariable String classId, Model model){
        model.addAttribute("classDetail", classesService.classDetail(classId));
        return "classDetail";
    }

}
