package com.ems.util;

import jakarta.mail.*;
import jakarta.mail.internet.*;

import java.util.Properties;

public class EmailUtil {

        public static void sendEmail(
                        String toEmail,
                        String subject,
                        String messageText) {

                final String senderEmail = "bosesanchita7980@gmail.com";

                final String appPassword = "itrv gmyk fggk uzcg";

                Properties props = new Properties();

                props.put(
                                "mail.smtp.auth",
                                "true");

                props.put(
                                "mail.smtp.starttls.enable",
                                "true");

                props.put(
                                "mail.smtp.host",
                                "smtp.gmail.com");

                props.put(
                                "mail.smtp.port",
                                "587");

                Session session = Session.getInstance(
                                props,

                                new Authenticator() {

                                        protected PasswordAuthentication getPasswordAuthentication() {

                                                return new PasswordAuthentication(
                                                                senderEmail,
                                                                appPassword);
                                        }
                                });

                try {

                        Message message = new MimeMessage(
                                        session);

                        message.setFrom(
                                        new InternetAddress(
                                                        senderEmail));

                        message.setRecipients(
                                        Message.RecipientType.TO,

                                        InternetAddress.parse(
                                                        toEmail));

                        message.setSubject(
                                        subject);

                        message.setText(
                                        messageText);

                        Transport.send(
                                        message);

                        System.out.println(
                                        "Email Sent Successfully");

                } catch (Exception e) {

                        e.printStackTrace();
                }
        }
}
