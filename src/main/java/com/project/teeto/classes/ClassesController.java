package com.project.teeto.classes;

import com.project.teeto.classes.model.Classes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("class")
public class ClassesController {
    @Autowired
    ClassesService classesService;

    @PostMapping(value = "/apply", produces = {"application/json;charset=utf-8"})
    @ResponseBody
    public boolean apply(@ModelAttribute Classes classes) {
        return classesService.insert(classes);
    }
}
