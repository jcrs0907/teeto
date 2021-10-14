package com.project.teeto.mentee.mapper;

import com.project.teeto.mentee.model.Mentee;
import org.springframework.stereotype.Repository;

@Repository
public interface MenteeMapper {

    void insert(Mentee mentee);
    void likeClass(Mentee mentee);
    void deleteClass(Mentee mentee);
}
