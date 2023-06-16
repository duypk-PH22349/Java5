package com.spring.service;

import java.util.Properties;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;

@Configuration
public class EmailConfig {
	  @Bean
	    public JavaMailSender javaMailSender() {

	        JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
	        mailSender.setHost("smtp.gmail.com");
	        mailSender.setPort(587);
	        mailSender.setUsername("duypkph22349@fpt.edu.vn");
	        mailSender.setPassword("amrinxszbpdxrqpu");

	        Properties props = mailSender.getJavaMailProperties();
	        props.put("mail.smtp.auth", true);
	        props.put("mail.smtp.starttls.enable", true);

	        return mailSender;
	    }
}
