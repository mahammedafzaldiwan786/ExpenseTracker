package com.grownited.controller.admin;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.repository.ExpenseRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController {
	
	
	@Autowired
	ExpenseRepository expenseRepository;

	@GetMapping("admindashboard")
	public String adminDashboard(HttpSession session, Model model) {
		
		
		LocalDate today = LocalDate.now();
		
		int month = today.getMonthValue();
		
		int year = today.getYear();
		
//		System.out.println("year:===>"+year);
		
		
		 Object TotalExpensesForToday = expenseRepository.getTotalExpensesForToday();
		
		Object TotalExpensesForThisMonth = expenseRepository.getTotalExpensesForThisMonth(month);	
		
		Object TotalExpensesForThisYear = expenseRepository.getTotalExpensesForThisYear(2024);
		
//		System.out.println(TotalExpensesForThisMonth);
		
		
		model.addAttribute("TotalExpensesForThisMonth", TotalExpensesForThisMonth);
		
		model.addAttribute("TotalExpensesForThisYear", TotalExpensesForThisYear);
		
		model.addAttribute("TotalExpensesForToday", TotalExpensesForToday);
		
		
	
		
//		System.out.println("TotalExpensesForToday======>"+TotalExpensesForToday);
		
		
		
		
		
		
		
		return "AdminDashboard";
	}
	
	
	
	//for testing 
	
		@GetMapping("/adminheader")
		public String adminheader() {
			
			return "AdminHeader";
		}
		
		@GetMapping("/adminfooter")
		public String adminfooter() {
			
			return "AdminFooter";
		}
		
		@GetMapping("/adminsidebar")
		public String adminsidebar() {
			
			return "AdminSidebar";
		}
		
		
		@GetMapping("test1")
		public String test1() {
			
			return "Test1";
		}
}