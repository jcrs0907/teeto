package com.project.teeto.community;

import com.project.teeto.auth.model.Auth;
import com.project.teeto.community.mapper.CommunityMapper;
import com.project.teeto.community.model.Community;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class CommunityService {

    @Autowired
    CommunityMapper communityMapper;

    /**
     * 커뮤니티 등록
     * @param community
     * @return
     */
    public boolean insert(Community community) {
        boolean result = false;
        int cnt = 0;

        cnt = communityMapper.insert(community);
        if(cnt == 1) {
            result = true;
        }
        return result;
    }

    /**
     * 커뮤니티 목록(코드별), 내 글 목록
     * @param cmntTpCd
     * @param auth
     * @return
     */
    public Community getList(String cmntTpCd, Auth auth) {
        List<Community> communityList = null;
        List<Community> myCommunityList = null;
        Community communityRes = new Community();
        Community communityReq = new Community();
        int myCmntCnt = 0;

        communityReq.setMemId(auth.getMemId());
        communityReq.setCmntTpCd(cmntTpCd);

        communityList = communityMapper.getList(cmntTpCd);
        myCommunityList = communityMapper.getMyList(communityReq);
        if(myCommunityList != null) {
            myCmntCnt = myCommunityList.size();
        }

        communityRes.setCommunityList(communityList);
        communityRes.setMyCommunityList(myCommunityList);
        communityRes.setMyCommunityCnt(myCmntCnt);

        return communityRes;
    }

}
