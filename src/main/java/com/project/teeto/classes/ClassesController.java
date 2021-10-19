package com.project.teeto.classes;

import com.project.teeto.auth.model.Auth;
import com.project.teeto.classes.model.Classes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import static com.project.teeto.constant.AppConstant.CLASS_SEARCH_TP_CD_DATE;
//CLASS_SEARCH_TP_CD_CATEGORY
//CLASS_SEARCH_TP_CD_LIKE

import java.util.List;

@Controller
@RequestMapping("class")
public class ClassesController {
    @Autowired
    ClassesService classesService;

    //클래스 등록하기
    @PostMapping(value = "/apply", produces = {"application/json;charset=utf-8"})
    @ResponseBody
    public boolean apply(@ModelAttribute Classes classes) {
        return classesService.insert(classes);
    }

    //클래스 수정
    @PostMapping(value = "/update", produces = {"application/json;charset=utf-8"})
    @ResponseBody
    public boolean update(@ModelAttribute Classes classes) {
        return classesService.update(classes);
    }

    //클래스 삭제
    @PostMapping(value = "/delete", produces = {"application/json;charset=utf-8"})
    @ResponseBody
    public boolean delete(@ModelAttribute Classes classes) {
        return classesService.delete(classes);
    }

    //클래스 상세 페이지
    @GetMapping("/detail/{classId}")
    public String detail(
            @PathVariable String classId,
            Model model){

        model.addAttribute("classDetail", classesService.classDetail(classId));
        return "classDetail";
    }

    //클래스 목록 검색
    @PostMapping(value = "/search")
    @ResponseBody
    public List<Classes> searchClasses(
            @ModelAttribute Classes classes,
            HttpServletRequest req
    ){
        HttpSession session = req.getSession();
        Auth auth = (Auth)session.getAttribute("member");
        return classesService.selectClasses(classes, auth);
    }

}
