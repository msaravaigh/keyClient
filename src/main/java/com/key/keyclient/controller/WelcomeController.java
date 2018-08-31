package com.key.keyclient.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WelcomeController {

	@Autowired
	private HttpServletRequest request;
	
	@RequestMapping("/")
	public String welcome(Model model){
		model.addAttribute("message", "Welcome to webclient");		
		return "welcome";
	}
	
	@RequestMapping("/home")
	public String home(Model model){
		System.out.println("...get home is called .."+request);
			String token=(String) request.getSession().getAttribute("token");
			if(token!=null && !"".equals(token.trim())){
				model.addAttribute("message", "Welcome to webclient");			
				return "home";
			}else{
				model.addAttribute("message", "Please login");			
				return "welcome";
			}
		
		
	}
}
