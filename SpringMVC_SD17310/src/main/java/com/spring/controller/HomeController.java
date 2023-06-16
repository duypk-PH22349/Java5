package com.spring.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@Autowired
	HttpServletRequest request;
	
	@RequestMapping(value = {"", "/", "/index", "/home"})
	public ModelAndView homePage(@RequestParam(name = "name", required = false, defaultValue = "Spring") String name) {
		
		ModelAndView m = new ModelAndView();
		m.setViewName("homePage");
		
		//m.addObject("message", "Hello Spring Framework");
		request.setAttribute("message", "Hello " + name);
		return m;
	}
	
	
	@RequestMapping(value = "/login")
	public String loginPage(Model model) {
		model.addAttribute("appName", "Chào mừng bạn đến trang web");
		return "login";
	}
	

}
