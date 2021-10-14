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

    /**
     * 커뮤니티 상세
     * @param cmntSeqno
     * @return
     */
    public Community getDetail(int cmntSeqno) {
        Community community = null;

        community = communityMapper.getDetail(cmntSeqno);

        return community;
    }

    /**
     * 커뮤니티 수정
     * @param community
     * @return
     */
    public boolean update(Community community) {
        boolean result = false;
        int cnt = 0;

        if(community.getCmntImgFile() != null) {
            //파일 업데이트, seqno set
        }

        if(community.getCmntFileDeleteYn().equals("Y")) {
            //파일 삭제 ,seqno delete
        }

        cnt = communityMapper.update(community);
        if(cnt == 1) {
            result = true;
        }

        return result;
    }

    /**
     * 커뮤니티 삭제
     * @param community
     * @return
     */
    public boolean delete(Community community) {
        boolean result = false;
        int cnt = 0;

        if(community.getCmntFileSeqno() != null) {
            //파일 삭제
        }
        cnt = communityMapper.delete(community);
        if(cnt == 1) {
            communityMapper.deleteAllComment(community.getCmntSeqno());
            result = true;
        }

        return result;
    }
}
