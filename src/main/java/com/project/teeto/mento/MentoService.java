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

    /**
     * 닉네임 중복체크
     * @param mentoNm
     * @return
     */
    public boolean checkNmUse(String mentoNm){
        boolean result = false;

        int count = mentoMapper.checkNm(mentoNm);
        if(count == 0) {
            result = true;
        }
        return result;
    }

    /**
     * 멘토 생성
     * @param mento
     * @return
     */
    @Transactional
    public boolean insert(Mento mento) {
        boolean result = false;

        int count = mentoMapper.insert(mento);
        if(count == 1) {
            mentoMapper.updateMemberTpCd(mento);
            result = true;
        }
        return result;
    }

    /**
     * 멘토 수정
     * @param mento
     * @return
     */
    @Transactional
    public boolean update(Mento mento) {
        boolean result = false;
        int cnt = 0;

        cnt = mentoMapper.update(mento);
        if(cnt == 1) {
            result = true;
        }
        return  result;
    }


}
