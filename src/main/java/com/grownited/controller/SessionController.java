package com.grownited.controller;

import java.time.LocalDate;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import com.grownited.entity.UserEntity;
import com.grownited.repository.ExpenseRepository;
import com.grownited.repository.UserRepository;
import com.grownited.service.MailService;

import jakarta.servlet.http.HttpSession;



@Controller
public class SessionController {
	
	@Autowired
	UserRepository userRepository;
	
	
	@Autowired
	PasswordEncoder encoder;
	
	@Autowired
	MailService mailService;
	
	
	@Autowired
	ExpenseRepository expenseRepository;
	
	
	@GetMapping(value = {"signup","adminnewuser","/"})
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

			}else {
				model.addAttribute("error","Invalid Credentials");
				
			}
			
		}else { 
			
			model.addAttribute("error","Email not exist!!!");
		}
		return "Login";
	}
	
	
	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login";// login url
	}
	
	@GetMapping("home")
	public String home(HttpSession session, Model model) {
		
     LocalDate today = LocalDate.now();
		
		int month = today.getMonthValue();
		
		int year = today.getYear();
		
		 Object TotalExpensesForToday = expenseRepository.getTotalExpensesForToday();
		
		Object TotalExpensesForThisMonth = expenseRepository.getTotalExpensesForThisMonth(month);	
		
		Object TotalExpensesForThisYear = expenseRepository.getTotalExpensesForThisYear(year);
		
		
		model.addAttribute("TotalExpensesForThisMonth", TotalExpensesForThisMonth);
		
		model.addAttribute("TotalExpensesForThisYear", TotalExpensesForThisYear);
		
		model.addAttribute("TotalExpensesForToday", TotalExpensesForToday);
		
		
		return "Home";
	}
	
	@GetMapping("forgetpassword")
	public String forgetpassword() {
		return "ForgetPassword";
	}
	
		@PostMapping("sendOtp")
		public String sendOtp(String email, Model model) {
			// email valid
			Optional<UserEntity> op = userRepository.findByEmail(email);
			if (!op.isPresent()) {
				// email invalid
				model.addAttribute("error", "Email not found");
				return "ForgetPassword";
			} else {
				// email valid
				// send mail otp
				// opt generate
				// send mail otp
				String otp = "";
				otp = (int) (Math.random() * 1000000) + "";// 0.25875621458541

				UserEntity user = op.get();
				user.setOtp(otp);
				userRepository.save(user);// update otp for user
				mailService.sendOtpForForgetPassword(email, user.getFirstName(), otp);
				return "ChangePassword";
			}
	}
	
	
		@PostMapping("updatepassword")
		public String updatePassword(String email, String password, String otp, Model model) {
			Optional<UserEntity> op = userRepository.findByEmail(email);
			if (!op.isPresent()) {
				model.addAttribute("error", "Invalid Data");
				return "ChangePassword";
			} else {
				UserEntity user = op.get();
				if (user.getOtp().equals(otp)) {
					String encPwd = encoder.encode(password);
					user.setPassword(encPwd);
					user.setOtp("");
					userRepository.save(user);// update
				} else {

					model.addAttribute("error", "Invalid Data");
					return "ChangePassword";
				}
			}
			model.addAttribute("msg","Password updated");
			return "Login";
		
	}
	
	@GetMapping("/errorpage")
	public String errorpage() {
		
		return "ErrorPage";
	}
	
	
}
