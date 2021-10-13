package com.project.teeto.community.mapper;

import com.project.teeto.community.model.Community;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CommunityMapper {

    int insert(Community community);

    List<Community> getList(String cmntTpCd);

    List<Community> getMyList(Community community);
}
