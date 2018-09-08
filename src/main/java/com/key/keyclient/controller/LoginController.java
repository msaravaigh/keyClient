package com.key.keyclient.controller;


import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.key.keyclient.model.Response;
import com.key.keyclient.model.User;


@Controller
public class LoginController {
	private final Logger LOGGER = LoggerFactory.getLogger(this.getClass());
	@Autowired
	private HttpServletRequest request;
	 @RequestMapping(value = "/login", method = RequestMethod.GET)
	    public ModelAndView login() {
		 System.out.println("login get ");
		 ModelAndView mv= new ModelAndView("login");
		 mv.addObject("title", "Login");	
	        return mv;
	    }
	 
	 @RequestMapping(value = "/register", method = RequestMethod.GET)
	    public ModelAndView register() {
		 System.out.println("register get ");
		 ModelAndView mv= new ModelAndView("signup-personal");
		 mv.addObject("title", "Registration");	
	        return mv;
	    }
	 
	 
	 @RequestMapping(value = "/logout", method = RequestMethod.GET)
	    public String logout(Model model) {
		 System.out.println("logout get ");
		 request.getSession().setAttribute("userfullname",null);
		 request.getSession().setAttribute("token", null);
		 model.addAttribute("message", "Welcome to webclient");		
			return "welcome";
	    }
	 
	 @RequestMapping(value = "/login", method = RequestMethod.POST)
		public ModelAndView login(@ModelAttribute("userForm") User user) {
		 LOGGER.info("login post "+user +" email " +user.getEmail() 
		 +" Password  : "+user.getPassword());
		 int successCode=403;
		 String usernameAndPassword = user.getEmail() + ":" + user.getPassword();
		    String authorizationHeaderValue = "Basic " + java.util.Base64.getEncoder().encodeToString( usernameAndPassword.getBytes() );
		    request.getSession().setAttribute("token", authorizationHeaderValue);
		 HttpHeaders requestHeaders = new HttpHeaders();
			requestHeaders.setContentType(MediaType.APPLICATION_JSON);
			requestHeaders.set("Authorization", authorizationHeaderValue);
			Response responseObj = authenticate(user,  requestHeaders);
			ModelAndView mv =null;
			if(responseObj.getStatusCode() ==200){
				mv= new ModelAndView("home");
				mv.addObject("title", "Home");
				System.out.println(" user.getName() = "+ responseObj.getOutObj().get("userfullname"));
				request.getSession().setAttribute("userfullname", responseObj.getOutObj().get("userfullname"));				
			}else{
				request.getSession().setAttribute("token", "");
				mv= new ModelAndView("login");
				mv.addObject("title", "Login");
				mv.addObject("message", "Login failed");
			}
			mv.addObject("httpstatus", successCode);
			
			
			return mv;
	 }

	public Response authenticate(User user, HttpHeaders requestHeaders) {
		RestTemplate restTemplate = new RestTemplate();
		Response responseObj=new Response();
		try {
			 HttpEntity<User> entity = new HttpEntity<User>(user, requestHeaders);
			 ResponseEntity<Object>  response=   restTemplate.exchange("http://localhost:7000/login/",
			    		HttpMethod.POST, entity, Object.class);
			 LOGGER.debug(response.getBody() + " "+response.getStatusCodeValue()  );
			 responseObj.setOutObj((Map<String, String>) response.getBody());
			 responseObj.setStatusCode(response.getStatusCodeValue());
		}catch(HttpClientErrorException he){
			he.printStackTrace();
			LOGGER.debug(" Http error - "+he.toString());
			responseObj.setStatusCode(he.getRawStatusCode());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return responseObj;
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView register(@ModelAttribute("userForm") User user) {
	 LOGGER.info("register post "+user +" email " +user.getEmail()) ;
	 RestTemplate restTemplate = new RestTemplate();
	 ModelAndView mv= new ModelAndView("welcome");
		try {
			
			HttpHeaders requestHeaders = new HttpHeaders();
			requestHeaders.setContentType(MediaType.APPLICATION_JSON);
			
			 HttpEntity<User> entity = new HttpEntity<User>(user, requestHeaders);
			 ResponseEntity<Object>  response=   restTemplate.exchange("http://localhost:7000/register/",
			    		HttpMethod.POST, entity, Object.class);
			 LOGGER.debug(response.getBody() + " "+response.getStatusCodeValue()  );
			 mv.addObject("HTTPStatus", response.getStatusCodeValue());;
		}catch(HttpClientErrorException he){
			LOGGER.debug(" Http error - "+he.toString());
			mv.addObject("HTTPStatus", he.getRawStatusCode());
		} catch (Exception e) {e.printStackTrace();
			LOGGER.error(""+ e);
		}
		return mv;
	} 
}
