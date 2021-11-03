package com.project.teeto.community;

import com.project.teeto.auth.AuthService;
import com.project.teeto.auth.model.Auth;
import com.project.teeto.community.model.Community;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Slf4j
@Controller
@RequestMapping("comm")
public class CommunityController {

    @Autowired
    CommunityService communityService;

    @Autowired
    AuthService authService;


    /**
     * 커뮤니티 글쓰기(등록)
     * @param community
     * @return
     */
    @PostMapping()
    @ResponseBody
    public boolean insert(Community community ,HttpServletRequest req) {
        log.info(String.format("[Insert Community] Title : %s", community.getCmmtTitle()));
        return communityService.insert(community, authService.getSession(req));
    }


    /**
     * 커뮤니티 목록
     * @param cmmtTpCd
     * @param req
     * @return
     */
    @GetMapping("/{cmmtTpCd}")
    @ResponseBody
    public Community getList(@PathVariable String cmmtTpCd, HttpServletRequest req) {
        return communityService.getList(cmmtTpCd, authService.getSession(req));
    }


    /**
     * 커뮤니티 상세
     * @param cmmtSeqno
     * @return
     */
    @GetMapping("/detail/{cmmtSeqno}")
    @ResponseBody
    public Community getDetail(@PathVariable int cmmtSeqno) {
        return communityService.getDetail(cmmtSeqno);
    }


    /**
     * 커뮤니티 수정
     * @param community
     * @return
     */
    @PatchMapping("/{cmmtSeqno}")
    @ResponseBody
    public boolean update(Community community) {
        log.info(String.format("[Update Community] Seqno : %s", community.getCmmtSeqno()));
        return communityService.update(community);
    }


    /**
     * 커뮤니티 삭제
     * @param community
     * @return
     */
    @PostMapping("/{cmmtSeqno}")
    @ResponseBody
    public boolean delete(Community community) {
        log.info(String.format("[Delete Community] Seqno : %s", community.getCmmtSeqno()));
        return communityService.delete(community);
    }


    /**
     * 커뮤니티 댓글 등록
     * @param community
     * @param req
     * @return
     */
    @PostMapping("/comment")
    @ResponseBody
    public boolean insertComment(Community community, HttpServletRequest req) {
        log.info(String.format("[Insert Comment] CmtCtt : %s", community.getCmmtCmtCtt()));
        return communityService.insertComment(community, authService.getSession(req));
    }


    /**
     * 커뮤니티 댓글 수정
     * @param community
     * @return
     */
    @PatchMapping("/comment/{cmmtCmtSeqno}")
    @ResponseBody
    public boolean updateComment(Community community) {
        log.info(String.format("[Update Comment] CmtSeqno : %s", community.getCmmtCmtSeqno()));
        return communityService.updateComment(community);
    }


    /**
     * 커뮤니티 댓글 삭제
     * @param cmmtCmtSeqno
     * @return
     */
    @DeleteMapping("/comment/{cmmtCmtSeqno}")
    @ResponseBody
    public boolean deleteComment(@PathVariable int cmmtCmtSeqno) {
        log.info(String.format("[Delete Comment] cmtSeqno : %s", cmmtCmtSeqno));
        return communityService.deleteComment(cmmtCmtSeqno);
    }
}
