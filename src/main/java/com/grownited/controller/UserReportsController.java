package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.entity.ExpenseEntity;
import com.grownited.repository.ExpenseRepository;

@Controller
public class UserReportsController {
	
	@Autowired
	ExpenseRepository expenseRepository;
	
	@GetMapping("userexpensereport")
	public String userexpensereport(Model model) {
		
		
		List<ExpenseEntity> expenseList =  expenseRepository.findAll();
		
		model.addAttribute("expenseList",expenseList);
		
		
		return "UserExpenseReport";
	}
	
	
	
	
}
