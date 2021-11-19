package com.project.teeto.intergrate.sms;

import lombok.extern.slf4j.Slf4j;
import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Service;

import java.util.HashMap;

import static com.project.teeto.constant.AppConstant.SMS_API_KEY;
import static com.project.teeto.constant.AppConstant.SMS_API_SECRET;
import static com.project.teeto.constant.AppConstant.SMS_FROM_NUMBER;
import static com.project.teeto.constant.AppConstant.SMS_TYPE_SMS;

@Slf4j
@Service
public class SmsService {

    /**
     * 문자 발송
     * @param tel
     * @param authCode
     */
    public void sendAuthSms(String tel, String authCode) {
        log.info(String.format("telNumber : %s", tel));

        HashMap<String,String> param = new HashMap<>();

        Message coolSms = new Message(SMS_API_KEY, SMS_API_SECRET);

        param.put("to", tel);
        param.put("from", SMS_FROM_NUMBER);
        param.put("type", SMS_TYPE_SMS);
        param.put("text", "[TEETO] 티토 인증번호는 " + authCode + " 입니다.");
        try {
            JSONObject obj = coolSms.send(param);
            System.out.println(obj.toString());
        } catch (CoolsmsException e) {
            System.out.println(e.getMessage());
            System.out.println(e.getCode());
        }
    }
}
