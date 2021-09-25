package com.project.teeto.mento.mapper;

import com.project.teeto.mento.model.Mento;
import org.springframework.stereotype.Repository;

@Repository
public interface MentoMapper {

    int insert(Mento mento);

    int checkNm(String mentoNm);
}
