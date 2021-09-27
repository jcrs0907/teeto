package com.project.teeto.terms;

import com.project.teeto.terms.mapper.TermsMapper;
import com.project.teeto.terms.model.Terms;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Slf4j
@Service
public class TermsService {

    @Autowired
    TermsMapper termsMapper;

    /**
     * 회원 약관 동의
     * @param memId
     */
    public void insertMemTermsInfo(String memId) {
        Terms terms = new Terms();
        terms.setMemId(memId);
        ArrayList<String> list = new ArrayList();
        list.add("TRMS01");
        list.add("TRMS02");

        for(String t : list) {
            terms.setTermsCd(t);
            termsMapper.insertMemTermsInfo(terms);
        }
    }
}
