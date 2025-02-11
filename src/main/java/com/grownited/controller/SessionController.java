package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestBody;



@Controller
public class SessionController {
	
	@GetMapping(value = {"signup","/"})
	public String signup() {
		
		return "Signup"; 
	}
	
	@PostMapping("saveuser")
	public String saveuser() {
		return "Login";
	}
	

	@GetMapping("login")
	public String login() {
		return "Login";
	}
	
	@GetMapping("forgetpassword")
	public String forgetpassword() {
		return "ForgetPassword";
	}
	
	@PostMapping("sendOtp")
	public String sendOtp() {
		
		return "ChagePassword";
	}
	
	
	@PostMapping("updatepassword")
	public String updatepassword() {
		
		return "Login";
	}
	
	
	
	
}
