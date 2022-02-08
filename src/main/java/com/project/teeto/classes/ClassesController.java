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
     * 카테고리 검색, 카테고리 클래스 갯수
     * @param classes
     * @return
     */

    @PostMapping("/category/list")
    @ResponseBody
    public List<Classes> searchCategory(Classes classes){
        return classesService.getCategoryList(classes);
    }


    /**
     * 클래스 목록
     * @param classes
     * @param req
     * @return
     */
    @GetMapping(value = {
            "/list/{classCtgrCd}",
            "/list/{classCtgrCd}/{classDetailCtgrCd}",
            "/list"})
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



    /**
     * JSP
     */
    //상세
    @GetMapping("/detail/{classId}")
    public String detail(@PathVariable String classId, Model model){
        //classDetail에는 classId에 해당하는 classes의 내용이 담겨있음
        Classes classes = classesService.classDetail(classId);
        model.addAttribute("classDetail", classes);
        System.out.println(classes);
        return "classesDetail";
    }


    /**
     * JSP
     */
    //클래스 신청하기
    @GetMapping("/classes/apply")
    public String classesApply() {
        return "classesApply";
    }





}
