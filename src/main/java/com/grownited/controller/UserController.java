package com.grownited.controller;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.UserEntity;
import com.grownited.repository.UserRepository;
import com.grownited.service.MailService;

@Controller
public class UserController {
	
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	MailService mailService;
	
	@Autowired
	PasswordEncoder encoder;
	
	@PostMapping("saveuser")
	public String saveuser(UserEntity userEntity) {
		
		System.out.println(userEntity.getFirstName());
		System.out.println(userEntity.getLastName());
		System.out.println(userEntity.getEmail());
		System.out.println(userEntity.getPassword());
		System.out.println(userEntity.getGender());
		System.out.println(userEntity.getDateOfBirth());
		System.out.println(userEntity.getContactNum());
		
		
		
		userEntity.setRole("USER");
		userEntity.setActive(true);
		userEntity.setCreatedAt(LocalDate.now().toString());
		
		String encPassword = encoder.encode(userEntity.getPassword());
		userEntity.setPassword(encPassword);
		
		userRepository.save(userEntity);
		
		// send mail
		mailService.sendWelcomeMail(userEntity.getEmail(), userEntity.getFirstName());
		
		return "redirect:/listuser";
	}
	
	
	@GetMapping("listuser")
	public String listuser(Model model) {
		
		List<UserEntity> userList = userRepository.findAll();
		
		model.addAttribute("userList", userList);
		
		return "ListUser";
	}
	
	@GetMapping("viewuser")
	public String viewuser(Integer userId,Model model) {
		
		System.out.println("User ID : "+userId);
		
		Optional<UserEntity> op = userRepository.findById(userId);
		
		if (op.isEmpty()) {
			// not found
		} else {
			// data found
			 UserEntity user = op.get();
			// send data to jsp ->
			model.addAttribute("user", user);

		}
		
		return "ViewUser";
	}
	
	
	@GetMapping("deleteuser")
	public String deleteuser(Integer userId) {
		
		userRepository.deleteById(userId);
		
		System.out.println("User successfully deleted!");
		
		return "redirect:/listuser";
	}
}
