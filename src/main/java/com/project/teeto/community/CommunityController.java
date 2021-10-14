package com.project.teeto.community;

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


    /**
     * 커뮤니티 글쓰기(등록)
     * @param community
     * @return
     */
    @PostMapping()
    @ResponseBody
    public boolean insert(Community community ,HttpServletRequest req) {
        HttpSession session = req.getSession();
        Auth auth = (Auth)session.getAttribute("member");
        return communityService.insert(community, auth);
    }


    /**
     * 커뮤니티 목록
     * @param cmntTpCd
     * @param req
     * @return
     */
    @GetMapping("/{cmntTpCd}")
    @ResponseBody
    public Community getList(@PathVariable String cmntTpCd, HttpServletRequest req) {
        HttpSession session = req.getSession();
        Auth auth = (Auth)session.getAttribute("member");
        return communityService.getList(cmntTpCd, auth);
    }


    /**
     * 커뮤니티 상세
     * @param cmntSeqno
     * @return
     */
    @GetMapping("/{cmntSeqno}")
    @ResponseBody
    public Community getDetail(@PathVariable int cmntSeqno) {
        return communityService.getDetail(cmntSeqno);
    }


    /**
     * 커뮤니티 수정
     * @param community
     * @return
     */
    @PatchMapping("/{cmntSeqno}")
    @ResponseBody
    public boolean update(Community community) {
        return communityService.update(community);
    }


    /**
     * 커뮤니티 삭제
     * @param community
     * @return
     */
    @PostMapping("/{cmntSeqno}")
    @ResponseBody
    public boolean delete(Community community) {
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
        HttpSession session = req.getSession();
        Auth auth = (Auth)session.getAttribute("member");
        return communityService.insertComment(community, auth);
    }


    /**
     * 커뮤니티 댓글 수정
     * @param community
     * @return
     */
    @PatchMapping("/comment/{cmntCmmtSeqno}")
    @ResponseBody
    public boolean updateComment(Community community) {
        return communityService.updateComment(community);
    }


    /**
     * 커뮤니티 댓글 삭제
     * @param cmntCmmtSeqno
     * @return
     */
    @DeleteMapping("/comment/{cmntCmmtSeqno}")
    @ResponseBody
    public boolean deleteComment(@PathVariable int cmntCmmtSeqno) {
        return communityService.deleteComment(cmntCmmtSeqno);
    }
}
