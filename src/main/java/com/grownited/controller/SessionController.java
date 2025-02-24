package com.grownited.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import com.grownited.entity.UserEntity;
import com.grownited.repository.UserRepository;

import jakarta.servlet.http.HttpSession;



@Controller
public class SessionController {
	
	@Autowired
	UserRepository userRepository;
	
	
	@Autowired
	PasswordEncoder encoder;
	
	
	
	@GetMapping(value = {"signup","newuser","/"})
	public String signup() {
		return "Signup"; 
	}

	@GetMapping("login")
	public String login() {
		return "Login";
	}
	
	@PostMapping("authenticate")
	public String authenticate(String email, String password,Model model,HttpSession session) {
		System.out.println(email);
		System.out.println(password);
		
		Optional<UserEntity> op = userRepository.findByEmail(email);
		
		if (op.isPresent()) {
			
			UserEntity dbUser = op.get();
			boolean ans = encoder.matches(password, dbUser.getPassword());

			if (ans == true) {
				session.setAttribute("user", dbUser); // session -> user set
				if (dbUser.getRole().equals("ADMIN")) {

					return "redirect:/admindashboard";
				} else if (dbUser.getRole().equals("USER")) {

					return "redirect:/home";
				} else {
					model.addAttribute("error", "Please contact Admin with Error Code #0991");
					return "Login";
				}

			}
		}
		model.addAttribute("error","Invalid Credentials");
		return "Login";
	}
	
	
	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login";// login url
	}
	
	@GetMapping("home")
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
