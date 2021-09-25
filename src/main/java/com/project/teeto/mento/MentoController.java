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

    @PostMapping
    @ResponseBody
    public boolean insert(@ModelAttribute Mento mento) {
        boolean result = false;
        if(mentoService.insert(mento)) {
            result = true;
        }
        return result;
    }
}
