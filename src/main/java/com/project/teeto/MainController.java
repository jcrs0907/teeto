package com.project.teeto;


import com.project.teeto.auth.AuthService;
import com.project.teeto.classes.ClassesService;
import com.project.teeto.classes.model.Classes;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Slf4j
@Controller
@RequestMapping("/")
public class MainController {

    @Autowired
    ClassesService classesService;

    @Autowired
    AuthService authService;

    @GetMapping
    public String main() {
        return "index";
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @GetMapping("/signup")
    public String signup() {
        return "signup";
    }

    @GetMapping("/reset-password/request")
    public String resetPassword() {
        return "resetPassword";
    }

    @GetMapping("/community/list")
    public String communityList() {
        return "communityList";
    }

    @GetMapping("/community/write")
    public String communityWrite() {
        return "communityWrite";
    }

    @GetMapping("/community/detail")
    public String communityDetail() {
        return "communityDetail";
    }

    @GetMapping("/myPage")
    public String myPage() {
        return "myPage";
    }

    @GetMapping("/mento/apply")
    public String mentoApply() {
        return "mentoApply";
    }

    @GetMapping(value = {
            "/classes/list/{classCtgrCd}",
            "/classes/list/{classCtgrCd}/{classDetailCtgrCd}",
            "/classes/list"})
    public String classesList(
            @PathVariable(required = false) String classCtgrCd,
            @PathVariable(required = false) String classDetailCtgrCd,
            Classes classes,
            HttpServletRequest req,
            Model model) {

                //티토 카테고리 가져옴
                model.addAttribute("cateList",classesService.getCategoryList(classes));

                if(classCtgrCd != null){
                    classes.setClassCtgrCd(classCtgrCd);
                    model.addAttribute("classCtgrCd",classCtgrCd);
                    //jsp에서 사용할려고 addAttribute했는데 다른 방법 있나 찾아보기
                    model.addAttribute("subCateList",classesService.getSubCategoryList(classes));
                }

                if(classDetailCtgrCd != null){
                    classes.setClassDetailCtgrCd(classDetailCtgrCd);
                    model.addAttribute("classDetailCtgrCd",classDetailCtgrCd);
                }

                //클래스 목록 모델에 추가
                model.addAttribute("classList", classesService.getList(classes, authService.getSession(req)));

                return "classesList";
    }

    @GetMapping("/classes/detail")
    public String classesDetail() {
        return "classesDetail";
    }

    @GetMapping("/classes/apply")
    public String classesApply() {
        return "classesApply";
    }

}
