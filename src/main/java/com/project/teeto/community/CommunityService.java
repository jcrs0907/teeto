package com.project.teeto.community;

import com.project.teeto.auth.model.Auth;
import com.project.teeto.community.mapper.CommunityMapper;
import com.project.teeto.community.model.Community;
import com.project.teeto.intergrate.file.FileService;
import com.project.teeto.intergrate.paging.model.Pagination;
import com.project.teeto.intergrate.paging.model.PagingResponse;
import com.project.teeto.intergrate.paging.model.Search;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

import static com.project.teeto.constant.AppConstant.COMM_TP_CD_INFO;
import static com.project.teeto.constant.AppConstant.COMM_TP_CD_STUDY;
import static com.project.teeto.constant.AppConstant.COMM_FILE_PATH;
import static com.project.teeto.constant.AppConstant.COMM_FILE_GROUP_CD;

@Slf4j
@Service
public class CommunityService {

    @Autowired
    CommunityMapper communityMapper;

    @Autowired
    FileService fileService;


    /**
     * 커뮤니티 타입에 따라 멘티 / 멘토 구분후 ID저장
     * @param community
     * @param auth
     */
    public void setMemTypeId(Community community, Auth auth) {
        if(community.getCmmtTpCd().equals(COMM_TP_CD_STUDY)) {
            community.setMenteeId(auth.getMenteeId());
        }
        if(community.getCmmtTpCd().equals(COMM_TP_CD_INFO)) {
            community.setMentoId(auth.getMentoId());
        }
        community.setMemId(auth.getMemId());
    }

    /**
     * 커뮤니티 등록
     * @param community
     * @return
     */
    public boolean insert(Community community, Auth auth) {
        boolean result = false;
        int cnt = 0;

        setMemTypeId(community, auth);
        if(community.getCmmtImgFile() != null) {
            community.setCmmtFileSeqno(insertImage(community.getCmmtImgFile()));
        }
        cnt = communityMapper.insert(community);
        if(cnt == 1) {
            result = true;
        }
        return result;
    }

    /**
     * 커뮤니티 목록(코드별), 내 글 목록
     * @param cmmtTpCd
     * @param auth
     * @return
     */
    public PagingResponse<List<Community>> getList(String cmmtTpCd, Auth auth, Pagination page) {
        Search search = Search.builder()
                .info(cmmtTpCd)
                .page(page)
                .build();
        int totalCnt = communityMapper.getTotalCount(cmmtTpCd);
        page.setPageInfoWithTotalCount(totalCnt);

        return new PagingResponse<>(communityMapper.getList(search), page);
    }

    /**
     * 커뮤니티 상세
     * @param cmmtSeqno
     * @return
     */
    public Community getDetail(int cmmtSeqno) {
        Community community = null;
        List<Community> commentList = null;
        int cmtCnt = 0;

        community = communityMapper.getDetail(cmmtSeqno);
        commentList = communityMapper.getCommentList(cmmtSeqno);
        if(commentList != null) {
            community.setCommentList(commentList);
            cmtCnt = commentList.size();
            community.setCmmtCmtCnt(cmtCnt);
        }

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

        //파일 삭제 여부
        if(community.getCmmtFileDeleteYn().equals("Y")) {
            fileService.delete(community.getCmmtFileSeqno());
            community.setCmmtFileSeqno(null);
            communityMapper.deleteFileSeqno(community);
        }
        //파일 들어왔을 때
        if(community.getCmmtImgFile() != null) {
            community.setCmmtFileSeqno(insertImage(community.getCmmtImgFile()));
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

        if(community.getCmmtFileSeqno() != null) {
            fileService.delete(community.getCmmtFileSeqno());
        }
        cnt = communityMapper.delete(community);
        if(cnt == 1) {
            communityMapper.deleteAllComment(community.getCmmtSeqno());
            result = true;
        }

        return result;
    }

    /**
     * 댓글 등록
     * @param community
     * @param auth
     * @return
     */
    public boolean insertComment(Community community, Auth auth) {
        boolean result = false;
        int cnt = 0;

        setMemTypeId(community, auth);
        cnt = communityMapper.insertComment(community);
        if( cnt == 1) {
            result = true;
        }
        return result;
    }

    /**
     * 커뮤니티 댓글 수정
     * @param community
     * @return
     */
    public boolean updateComment(Community community) {
        boolean result = false;
        int cnt = 0;
        cnt = communityMapper.updateComment(community);
        if(cnt == 1) {
            result = true;
        }
        return result;
    }

    /**
     * 커뮤니티 댓글 삭제
     * @param cmmtCmtSeqno
     * @return
     */
    public boolean deleteComment(int cmmtCmtSeqno) {
        int cnt = 0;
        cnt = communityMapper.deleteComment(cmmtCmtSeqno);
        if(cnt == 1) {
            return true;
        }else {
            return false;
        }
    }

    /**
     * 파일 관련
     */
    //이미지 등록 후 seqno반환
    public Integer insertImage(MultipartFile file) {
        return fileService.insert(file, COMM_FILE_PATH, COMM_FILE_GROUP_CD);
    }
}
