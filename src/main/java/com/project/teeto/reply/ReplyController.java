package com.project.teeto.reply;

import com.project.teeto.reply.model.Reply;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Slf4j
@Controller
@RequestMapping("reply")
public class ReplyController {

    @Autowired
    ReplyService replyService;

    /**
     * 답변 등록
     * @param reply
     * @return
     */
    @PostMapping
    @ResponseBody
    public boolean insert(@ModelAttribute Reply reply) {
        log.info(String.format("[Insert Reply] RvwSeqno : %s", reply.getRvwSeqno()));
        return replyService.insert(reply);
    }

    /**
     * 답변 수정
     * @param reply
     * @return
     */
    @PatchMapping("/{replySeqno}")
    @ResponseBody
    public boolean update(@ModelAttribute Reply reply) {
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
    public boolean delete(@ModelAttribute Reply reply) {
        log.info(String.format("[Delete Reply] replySeqno : %s", reply.getReplySeqno()));
        return replyService.delete(reply);
    }
}
