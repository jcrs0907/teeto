package com.project.teeto.intergrate.file.mapper;


import com.project.teeto.intergrate.file.model.TeetoFile;
import org.springframework.stereotype.Repository;

@Repository
public interface FileMapper {

    void insert(TeetoFile teetoFile);

    String getPath(Integer seqno);

    void delete(Integer seqno);

}
