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
     * 인증 타입코드
     */
    String AUTH_TP_CD_PHONE = "APRQ01";
    String AUTH_TP_CD_EMAIL = "APRQ02";

    /**
     * 커뮤니티 타입코드
     */
    String CMMT_TP_CD_STUDY = "CM01";
    String CMMT_TP_CD_INFO = "CM02";

    /**
     * 회원 타입코드
     */
    String MEM_TP_CD_MENTEE = "MT01";
    String MEM_TP_CD_MENTO = "MT02";
}
