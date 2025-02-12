package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.entity.UserEntity;

import org.springframework.web.bind.annotation.RequestBody;



@Controller
public class SessionController {
	
	@GetMapping(value = {"signup","/"})
	public String signup() {
		
		return "Signup"; 
	}
	
	@PostMapping("saveuser")
	public String saveuser(UserEntity userEntity) {
		
		System.out.println(userEntity.getFirstName());
		System.out.println(userEntity.getLastName());
		System.out.println(userEntity.getEmail());
		System.out.println(userEntity.getPassword());
		System.out.println(userEntity.getGender());
		System.out.println(userEntity.getBornYear());
		System.out.println(userEntity.getContactNum());
		
		
		return "Login";
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
