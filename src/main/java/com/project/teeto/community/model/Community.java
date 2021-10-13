package com.project.teeto.community.model;

import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Alias("community")
@Getter
@Setter
public class Community {

    private Integer cmntSeqno;
    private String cmntTpCd;
    private String cmntTpCdNm;
    private String memId;
    private String menteeId;
    private String mentoId;
    private String cmntTitle;
    private String cmntCtt;
    private MultipartFile cmntImgFile;
    private Integer cmntFileSeqno;
    private Integer cmntViewCnt;
    private String nickName;
    private String creDttm;

    private Integer cmntCmmtSeqno;
    private String cmntCmmtCtt;

    private Integer myCommunityCnt;
    private List<Community> communityList;
    private List<Community> myCommunityList;

}
