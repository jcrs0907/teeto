package com.project.teeto.mento;

import com.project.teeto.mento.mapper.MentoMapper;
import com.project.teeto.mento.model.Mento;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Slf4j
@Service
public class MentoService {

    @Autowired
    MentoMapper mentoMapper;

    @Transactional
    public boolean insert(Mento mento) {
        boolean result = false;

        //멘토 아이디 필요
        //mento.setMentoId("");
        int count = mentoMapper.insert(mento);
        if(count == 1) {
            result = true;
        }

        return result;
    }

    public boolean checkNm(String mentoNm){
        boolean result = false;

        int count = mentoMapper.checkNm(mentoNm);
        if(count == 1) {
            result = true;
        }

        return result;
    }
}
