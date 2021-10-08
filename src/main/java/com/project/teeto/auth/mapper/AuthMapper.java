package com.project.teeto.auth.mapper;

import com.project.teeto.auth.model.Auth;
import org.springframework.stereotype.Repository;

@Repository
public interface AuthMapper {

    void insert(Auth auth);

    Auth select(Auth auth);

    void update(Auth auth);

    void insertLoginInfo(Auth auth);

    Auth login(Auth auth);

    String selectPassword(String memId);
}
