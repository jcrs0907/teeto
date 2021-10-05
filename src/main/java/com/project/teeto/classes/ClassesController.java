package com.project.teeto.classes;

import com.project.teeto.classes.model.Classes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Date;

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

    @GetMapping("/dateSelect/{startDate}/{endDate}")
    public String selectDateClassList(
            @PathVariable String startDate,
            @PathVariable String endDate,
            Model model) {

        model.addAttribute("classList",classesService.selectDateClass(startDate,endDate));
        return "selectDate";
    }

}
