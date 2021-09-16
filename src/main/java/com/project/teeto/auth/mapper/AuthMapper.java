package com.project.teeto.auth.mapper;

import com.project.teeto.auth.model.Auth;
import org.springframework.stereotype.Repository;

@Repository
public interface AuthMapper {

    void insert(Auth auth);

}
