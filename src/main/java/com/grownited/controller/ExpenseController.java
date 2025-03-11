package com.grownited.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.grownited.entity.ExpenseEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.ExpenseRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class ExpenseController {
	
	@Autowired
	ExpenseRepository expenseRepository;
	
	
	@Autowired
	Cloudinary cloudinary;
	
	@GetMapping("newexpense")
	public String newexpense() {
		
		
		return "NewExpense";
	}
	
	
	@PostMapping("saveexpense")
	public String saveexpense(ExpenseEntity expenseEntity,HttpSession session,MultipartFile billPic){
		
		
		
//		System.out.println(billPic.getOriginalFilename());
		
		try {
			Map result = cloudinary.uploader().upload(billPic.getBytes(), ObjectUtils.emptyMap());
			System.out.println(result);
			System.out.println(result.get("url"));
			expenseEntity.setBillPicPath(result.get("url").toString());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		UserEntity user = (UserEntity) session.getAttribute("user");
		Integer userId = user.getUserId();
		expenseEntity.setUserId(userId);

		
		
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
