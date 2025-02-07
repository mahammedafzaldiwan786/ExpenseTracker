package com.grownited.controller;

import org.springframework.web.bind.annotation.GetMapping;

public class SessionController {
	
	@GetMapping("signup")
	public String signup() {
		//
		return "Signup"; 
	}

	@GetMapping("login")
	public String login() {
		return "Login";
	}
	
}
