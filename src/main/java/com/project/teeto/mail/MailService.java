package com.project.teeto.mail;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import java.util.Properties;

import static com.project.teeto.constant.AppConstant.MAIL_SMTP_USER;
import static com.project.teeto.constant.AppConstant.MAIL_SMTP_ID;
import static com.project.teeto.constant.AppConstant.MAIL_SMTP_PASSWORD;
import static com.project.teeto.constant.AppConstant.MAIL_SMTP_HOST;
import static com.project.teeto.constant.AppConstant.MAIL_SMTP_STARTTLS_ENABLE;
import static com.project.teeto.constant.AppConstant.MAIL_SMTP_PORT;
import static com.project.teeto.constant.AppConstant.MAIL_SMTP_AUTH;

@Slf4j
@Service
public class MailService {

        /**
         * 메일 발송
         * @param email
         * @param authCode
         * @return
         */
        public boolean sendAuthMail(String email, String authCode) {
            boolean result = false;
            Properties properties = new Properties();
            properties.put("mail.smtp.user", MAIL_SMTP_USER);
            properties.put("mail.smtp.host", MAIL_SMTP_HOST);
            properties.put("mail.smtp.auth", MAIL_SMTP_PORT);
            properties.put("mail.smtp.starttls.enable", MAIL_SMTP_STARTTLS_ENABLE);
            properties.put("mail.smtp.auth", MAIL_SMTP_AUTH);

            try {
                Authenticator auth = new senderAccount();
                Session session = Session.getInstance(properties,auth);
                session.setDebug(true);

                MimeMessage msg = new MimeMessage(session);
                msg.setSubject("[티토] 인증번호입니다.");
                Address fromAddr = new InternetAddress(MAIL_SMTP_USER);
                msg.setFrom(fromAddr);
                Address toAddr = new InternetAddress(email);
                msg.addRecipient(Message.RecipientType.TO, toAddr);

                Multipart multi = new MimeMultipart();
                MimeBodyPart mbp = new MimeBodyPart();
                mbp.setContent("<body><h1>인증번호는 [ "+ authCode +" ] 입니다.</h1></body>","text/html; charset=UTF-8");
                multi.addBodyPart(mbp);
                msg.setContent(multi);

                Transport.send(msg);
                result = true;
            }catch (Exception e) {
                e.printStackTrace();
            }
            return result;
        }

        /**
         * 보내는 메일계정
         */
        private static class senderAccount extends javax.mail.Authenticator {
            public PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(MAIL_SMTP_ID, MAIL_SMTP_PASSWORD);
            }
        }

    }
