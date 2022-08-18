package com.chainsys.todo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.todo.service.EmailService;

@Controller
@RequestMapping("/mail")
public class MailController {
	@Autowired
	private EmailService emailService;

	@GetMapping("/sendmail")
	public String sendmail(String toEmail,String subject,String message) {

		emailService.sendMail("deepa.ravi@chainsys.com", "Test Subject", "Test mail");
		return "emailsent";
	}


}
