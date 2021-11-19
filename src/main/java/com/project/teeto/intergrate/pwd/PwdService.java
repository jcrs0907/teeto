package com.project.teeto.intergrate.pwd;

import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class PwdService {

    PasswordEncoder passwordEncoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();

    /**
     * 비밀번호 암호화
     * @param pwd
     * @return
     */
    public String encodePassword(String pwd) {
        String encodePwd = "";

        encodePwd = passwordEncoder.encode(pwd);
        return encodePwd;
    }

    /**
     * 비밀번호 체크
     * @param pwd
     * @param encodePwd
     * @return
     */
    public boolean matchPassword(String pwd, String encodePwd) {
        boolean result = false;

        result = passwordEncoder.matches(pwd, encodePwd);
        return result;
    }
}
