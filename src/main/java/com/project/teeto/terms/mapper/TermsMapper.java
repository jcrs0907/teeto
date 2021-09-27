package com.project.teeto.terms.mapper;

import com.project.teeto.terms.model.Terms;
import org.springframework.stereotype.Repository;

@Repository
public interface TermsMapper {

    void insertMemTermsInfo(Terms terms);
}
