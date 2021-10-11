package com.project.teeto.auth;


import com.project.teeto.auth.mapper.AuthMapper;
import com.project.teeto.auth.model.Auth;
import com.project.teeto.mail.MailService;
import com.project.teeto.member.model.Member;
import com.project.teeto.pwd.PwdService;
import com.project.teeto.sms.SmsService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Random;

import static com.project.teeto.constant.AppConstant.AUTH_TP_CD_EMAIL;
import static com.project.teeto.constant.AppConstant.AUTH_TP_CD_PHONE;

import static java.lang.System.currentTimeMillis;

@Slf4j
@Service
public class AuthService {

    @Autowired
    AuthMapper authMapper;

    @Autowired
    MailService mailService;

    @Autowired
    PwdService pwdService;

    @Autowired
    SmsService smsService;

    /**
     * 랜덤 인증번호
     * @return
     */
    public String excuteGenerate() {
        int certCharLength = 8;
        char[] characterTable = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L',
                'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X',
                'Y', 'Z', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0' };
        Random random = new Random(System.currentTimeMillis());
        int tablelength = characterTable.length;
        StringBuffer buf = new StringBuffer();

        for(int i = 0; i < certCharLength; i++) {
            buf.append(characterTable[random.nextInt(tablelength)]);
        }
        return buf.toString();
    }


    /**
     * 메일/문자 발송, Auth TB 저장
     * @param auth
     */
    @Transactional
    public boolean sendAuthCode(Auth auth) {
        boolean result = false;
        String authCode = excuteGenerate();

        /**
         * 유닉스 타임
         */
        String unixStarDttm = currentTimeMillis()+"";
        int sec = 600;
        Timestamp original = new Timestamp(Long.parseLong(unixStarDttm)); //전송할 시간
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(original.getTime());
        calendar.add(Calendar.SECOND, sec);
        Timestamp later = new Timestamp(calendar.getTime().getTime()); //유효시간

        auth.setCertNo(authCode);
        auth.setUnixTimeApvStrtDttm(original.getTime()/1000 + "");
        auth.setUnixTimeApvEndDttm(later.getTime()/1000 + "");

        if(auth.getApvReqTpCd() != null && !auth.getApvReqTpCd().equals("")) {
            if(auth.getApvReqTpCd().equals(AUTH_TP_CD_EMAIL)) {
                mailService.sendAuthMail(auth.getApvReqTpVal(), authCode);
            }
            if(auth.getApvReqTpCd().equals(AUTH_TP_CD_PHONE)) {
                smsService.sendAuthSms(auth.getApvReqTpVal(), authCode);
            }
            result = true;
        }
        authMapper.insert(auth);
        return result;
    }

    /**
     * 인증번호 체크
     * @param auth
     * @return
     */
    @Transactional
    public boolean checkCertNo(Auth auth) {
        boolean result = true;

        //유효시간 유닉스타임
        String unixTime = currentTimeMillis()+"";
        Timestamp time = new Timestamp(Long.parseLong(unixTime));
        auth.setCheckApvTime(time.getTime()/1000 +"");

        Auth authRslt = authMapper.select(auth);
        if (auth.getCheckCertNo() == null || !auth.getCheckCertNo().equals(authRslt.getCertNo())) {
            result = false;
        }
        authMapper.update(authRslt);
        return result;
    }

    /**
     * 로그인 정보(회원가입)
     * @param member
     */
    @Transactional
    public void insertLoginInfo(Member member) {
        Auth auth = new Auth();
        auth.setMemId(member.getMemId());
        auth.setLoginId(member.getMemEmail());
        auth.setPassword(member.getPassword());
        authMapper.insertLoginInfo(auth);
    }

    /**
     * 로그인
     * @param auth
     * @return
     */
    public Auth login(Auth auth) {
        Auth member = new Auth();
        Auth login = new Auth();
        login = authMapper.login(auth);

        if(pwdService.matchPassword(auth.getPassword(),login.getPassword())) {
            member = login;
            member.setMemId(login.getMemId());
            member.setMemTpCd(login.getMemTpCd());
        }
        return member;
    }

    /**
     * 비밀번호 체크
     * @param auth
     * @return
     */
    public boolean checkPassword(Auth auth) {
        boolean result = false;
        String pwd = authMapper.selectPassword(auth.getMemId());
        if(pwd != null && !pwd.equals("")) {
            if(pwdService.matchPassword(auth.getPassword(), pwd)) {
                result = true;
            }
        }
        return result;
    }

}
