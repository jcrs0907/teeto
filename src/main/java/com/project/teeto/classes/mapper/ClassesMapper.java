package com.project.teeto.classes.mapper;

import com.project.teeto.classes.model.Classes;
import org.springframework.stereotype.Repository;


@Repository

public interface ClassesMapper {

    void insertClass(Classes classes);

}