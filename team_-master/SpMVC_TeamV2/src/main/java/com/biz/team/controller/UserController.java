package com.biz.team.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/user")
public class UserController {

	
	@RequestMapping(value = "/login", method=RequestMethod.GET)
	public String login() {
		
		
		
		return "users/login";
	}
	

	@RequestMapping(value = "/join", method=RequestMethod.GET)
	public String join() {
		
		
		
		return "users/login";
	}
	
	
	@RequestMapping(value = "/mypage", method=RequestMethod.GET)
	public String mypage() {
		
		
		
		return "users/mypage"; 
		
		
	}
	
	
	    
	    
	
	
	
}
