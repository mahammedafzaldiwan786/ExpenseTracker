package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.UserEntity;
import com.grownited.service.PaymentService;

import jakarta.servlet.http.HttpSession;

@Controller
public class PaymentController {
	
	@Autowired
	PaymentService paymentService;
	
	
	
	
	
	
	@GetMapping("checkout")
	public String checkout(Model model) {
		
		model.addAttribute("amount", 500);
		
		
		return "Checkout";
	}
	
	
	
	
	@PostMapping("pay")
	public String pay(String ccNum,String expDate,HttpSession session) {
		
		UserEntity user = (UserEntity) session.getAttribute("user");
		
		
		paymentService.chargeCreditCard("bizdev05", "4kJd237rZu59qAZd",500.0, ccNum, expDate, user.getEmail());
		
		
		
		
		
		return "redirect:/home";
	}
	
}
