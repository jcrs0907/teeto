package com.project.teeto.file.mapper;


import com.project.teeto.file.model.TeetoFile;
import org.springframework.stereotype.Repository;

@Repository
public interface FileMapper {

    void insert(TeetoFile teetoFile);
}
