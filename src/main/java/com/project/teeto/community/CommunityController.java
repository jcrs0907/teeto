package com.project.teeto.community;

import com.project.teeto.auth.model.Auth;
import com.project.teeto.community.model.Community;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

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
    public boolean insert(@ModelAttribute Community community) {
        //TODO
        //커뮤니티 타입에 따라 request에서 menteeId, mentoId 구분하여 set
        return communityService.insert(community);
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
}
