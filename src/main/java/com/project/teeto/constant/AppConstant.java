package com.project.teeto.constant;

public interface AppConstant {

    /**
     * 메일
     */
    String MAIL_SMTP_USER = "devuser1004@gmail.com";
    String MAIL_SMTP_ID = "devuser1004";
    String MAIL_SMTP_PASSWORD = "eunseo1004";
    String MAIL_SMTP_HOST = "smtp.gmail.com";
    String MAIL_SMTP_PORT = "465";
    String MAIL_SMTP_STARTTLS_ENABLE = "true";
    String MAIL_SMTP_AUTH = "true";

    /**
     * SMS
     */
    String SMS_API_KEY = "NCSTR4SI7RNIFX8J";
    String SMS_API_SECRET = "IMIBZG3HUNRSLBGTTPVEEC44WNLKBQW4";
    String SMS_FROM_NUMBER = "01055325573";
    String SMS_TYPE_SMS = "SMS";

    /**
     * 파일
     */
    //회원
    String MEM_FILE_PATH = "./file/member";
    String MEM_FILE_GROUP_CD = "ME";
    //커뮤니티
    String COMM_FILE_PATH = "./file/community";
    String COMM_FILE_GROUP_CD = "CM";
    //클래스
    String CLASS_FILE_PATH = "./file/classes";
    String CLASS_FILE_GROUP_CD = "CL";

    /**
     * 인증 타입코드
     */
    String AUTH_TP_CD_PHONE = "APRQ01";
    String AUTH_TP_CD_EMAIL = "APRQ02";

    /**
     * 커뮤니티 타입코드
     */
    String COMM_TP_CD_STUDY = "CM01";
    String COMM_TP_CD_INFO = "CM02";

    /**
     * 회원 타입코드
     */
    String MEM_TP_CD_MENTEE = "MT01";
    String MEM_TP_CD_MENTO = "MT02";

    /**
     * 클래스 검색 타입코드
     */
    String CLASS_SEARCH_TP_CD_DATE = "CS01";        //날짜별
    String CLASS_SEARCH_TP_CD_MN = "CS02";          //멘토명
    String CLASS_SEARCH_TP_CD_CN = "CS03";          //클래스명
    String CLASS_SEARCH_TP_CD_START = "CS04";       //시작예정
    String CLASS_SEARCH_TP_CD_END = "CS05";         //종료된

    /**
     * 클래스 필터 타입 코드
     */
    String CLASS_SEARCH_FILTER_TP_CD_DATE = "FT01"; //최신순
    String CLASS_SEARCH_FILTER_TP_CD_LIKE = "FT02"; //인기순
}
