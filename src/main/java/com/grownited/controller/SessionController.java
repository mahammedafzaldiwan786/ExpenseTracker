package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.entity.UserEntity;
import com.grownited.repository.UserRepository;

import org.springframework.web.bind.annotation.RequestBody;



@Controller
public class SessionController {
	
	@Autowired
	UserRepository reposiroryUser;
	
	@GetMapping(value = {"signup","/"})
	public String signup() {
		
		return "Signup"; 
	}
	
	
	

	@GetMapping("login")
	public String login() {
		return "Login";
	}
	
	@PostMapping("home")
	public String home() {
		
		return "Home";
	}
	
	@GetMapping("forgetpassword")
	public String forgetpassword() {
		return "ForgetPassword";
	}
	
	@PostMapping("sendOtp")
	public String sendOtp(UserEntity userEntity){
		
		System.out.println(userEntity.getEmail());
		System.out.println(userEntity.getPassword());
		
		return "ChagePassword";
	}
	
	
	@PostMapping("updatepassword")
	public String updatepassword() {
		
		return "Login";
	}
	
	
	
	
}
