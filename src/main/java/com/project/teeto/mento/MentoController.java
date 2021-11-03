package com.project.teeto.mento;

import com.project.teeto.auth.AuthService;
import com.project.teeto.mento.model.Mento;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Slf4j
@Controller
@RequestMapping("/mento")
public class MentoController {

    @Autowired
    MentoService mentoService;

    @Autowired
    AuthService authService;

    //멘토 신청하기 페이지
    @GetMapping("/applyForm")
    public String mento(){
        return "mentoApplyForm";
    }

    /**
     * 닉네임 중복체크
     * @param mentoNm
     * @return
     */
    @GetMapping("/checkNmUse")
    @ResponseBody
    public boolean checkNmUse(String mentoNm){
        return mentoService.checkNmUse(mentoNm);
    }

    /**
     * 멘토 신청(생성)
     * @param mento
     * @return
     */
    @PostMapping()
    @ResponseBody
    public boolean insert(Mento mento, HttpServletRequest req) {
        mento.setMemId(authService.getSession(req).getMemId());
        return mentoService.insert(mento);
    }

    /**
     * 멘토 수정
     * @param mento
     * @return
     */
    @PatchMapping()
    @ResponseBody
    public boolean update(Mento mento, HttpServletRequest req) {
        mento.setMentoId(authService.getSession(req).getMentoId());
        return mentoService.update(mento);
    }

    /**
     * 멘토 상세
     * @param req
     * @return
     */
    @GetMapping()
    @ResponseBody
    public Mento getDetail(HttpServletRequest req) {
        Mento mento = null;
        mento = mentoService.getDetail(authService.getSession(req).getMentoId());
        return mento;
    }
}
