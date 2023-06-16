package com.spring.controller;

import java.net.Authenticator;
import java.net.PasswordAuthentication;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.entity.Users;
import com.spring.repository.UserRepository;
import com.spring.service.EmailSenderService;
import com.spring.service.UserService;

//Authentication : xác thực
//Authorization  :   phân quyền
@Controller
public class AuthController {

	@Autowired
	private EmailSenderService emailSenderService;

	@Autowired
	HttpServletRequest request;

	@Autowired
	private UserRepository usersRepository;

	@Autowired
	private UserService userService;

	@GetMapping("/login")
	public String showLoginForm(Model model) {
		model.addAttribute("user", new Users());
		return "login";
	}

	@PostMapping("/login")
	public String checkLogin(@Valid @ModelAttribute("user") Users user, BindingResult result, HttpSession session,
			Model model) {
		// validate
		if (result.hasErrors()) {
			return "login";
		}

		Users userFromDB = usersRepository.findByUsernameAndPassword(user.getUsername(), user.getPassword());
		if (userFromDB != null) {
			session.setAttribute("userLogged", userFromDB);
			return "redirect:/home";
		}

		// login failed
		model.addAttribute("message", "Username or password incorrect");
		return "login";
	}

	// REGISTER
	@GetMapping("/register")
	public String showRegistrationForm(Model model) {
		model.addAttribute("user", new Users());
		return "register";
	}

	@PostMapping("/register")
	public String registerUser(@ModelAttribute("user") Users user, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "register";
		}

		if (userService.userNameExists(user.getUsername())) {
			model.addAttribute("emailError", "Email already exists");
			return "register";
		}

		userService.register(user);
		return "redirect:/login";
	}

	// Forgot-password
	@GetMapping(value = "/forgot-password")
	public String forgotpassword() {

		return "forgot-password";
	}

	private String generateNewPassword() {
		return RandomStringUtils.randomAlphanumeric(6);
	}

	@PostMapping(value = "/forgot-password")
	public String processForgotPasswordForm(@RequestParam("username") String userName, Model model)
			throws AddressException, MessagingException {
		Users user = usersRepository.findByUsername(userName);

		if (user == null) {
			model.addAttribute("errorMessage", "Không tìm thấy tài khoản với địa chỉ email này");
		} else {

			String newPassword = generateNewPassword();
			userService.updatePassword(user, newPassword);
			emailSenderService.sendSimpleEmail(userName, "Password New:", newPassword);
			return "redirect:/login";
		}

		return "forgot-password";
	}

}
