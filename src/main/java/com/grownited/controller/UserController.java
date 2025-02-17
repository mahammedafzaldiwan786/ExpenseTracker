package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.UserEntity;
import com.grownited.repository.UserRepository;

@Controller
public class UserController {
	
	@Autowired
	UserRepository userRepository;
	
	@GetMapping("")
	public String newUser() {
		
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
		
		userRepository.save(userEntity);
		
		
		
		return "Login";
	}
	
	
	@GetMapping("listuser")
	public String listuser(Model model) {
		
		List<UserEntity> userList = userRepository.findAll();
		
		model.addAttribute("userList", userList);
		
		return "ListUser";
	}
	
	
}
