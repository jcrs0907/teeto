package com.project.teeto.reply;

import com.project.teeto.auth.AuthService;
import com.project.teeto.reply.model.Reply;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Slf4j
@Controller
@RequestMapping("reply")
public class ReplyController {

    @Autowired
    ReplyService replyService;

    @Autowired
    AuthService authService;

    /**
     * 답변 등록
     * @param reply
     * @return
     */
    @PostMapping
    @ResponseBody
    public boolean insert(Reply reply, HttpServletRequest req) {
        log.info(String.format("[Insert Reply] RvwSeqno : %s", reply.getRvwSeqno()));
        return replyService.insert(reply, authService.getSession(req));
    }

    /**
     * 답변 수정
     * @param reply
     * @return
     */
    @PatchMapping("/{replySeqno}")
    @ResponseBody
    public boolean update(Reply reply) {
        log.info(String.format("[Update Reply] replySeqno : %s", reply.getReplySeqno()));
        return replyService.update(reply);
    }

    /**
     * 답변 삭제
     * @param reply
     * @return
     */
    @DeleteMapping("/{replySeqno}")
    @ResponseBody
    public boolean delete(Reply reply) {
        log.info(String.format("[Delete Reply] replySeqno : %s", reply.getReplySeqno()));
        return replyService.delete(reply);
    }
}
