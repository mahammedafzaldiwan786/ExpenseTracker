package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.ExpenseEntity;
import com.grownited.repository.ExpenseRepository;

@Controller
public class ExpenseController {
	
	@Autowired
	ExpenseRepository expenseRepository;
	
	@GetMapping("newexpense")
	public String newexpense() {
		
		
		return "NewExpense";
	}
	
	
	@PostMapping("saveexpense")
	public String saveexpense(ExpenseEntity expenseEntity){
		
		expenseRepository.save(expenseEntity);
		
		return "redirect:/listexpense";
	}
	
	
	@GetMapping("listexpense")
	public String listexpense(Model model) {
		
		List<ExpenseEntity> expenseList =  expenseRepository.findAll();
		
		model.addAttribute("expenseList",expenseList);
		
		return "ListExpense";
	}
	
	
	@GetMapping("viewexpense")
	public String viewexpense(Integer expenseId,Model model) {
		
	System.out.println("Expense ID : "+expenseId);
		
		Optional<ExpenseEntity> op = expenseRepository.findById(expenseId);
		
		if (op.isEmpty()) {
			// not found
		} else {
			// data found
			ExpenseEntity expense = op.get();
			// send data to jsp ->
			model.addAttribute("expense", expense);

		}
		
		return "ViewExpense";
	}
	
	
	@GetMapping("deleteexpense")
	public String deleteexpense(Integer expenseId) {
		
		expenseRepository.deleteById(expenseId);
		
		System.out.println("Expense successfully deleted!");
		
		return "redirect:/listexpense";
	}
	
	
}
