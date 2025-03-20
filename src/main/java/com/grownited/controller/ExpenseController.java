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
import com.grownited.entity.AccountEntity;
import com.grownited.entity.CategoryEntity;
import com.grownited.entity.ExpenseEntity;
import com.grownited.entity.SubcategoryEntity;
import com.grownited.entity.UserEntity;
import com.grownited.entity.VendorEntity;
import com.grownited.repository.AccountRepository;
import com.grownited.repository.CategoryRepository;
import com.grownited.repository.ExpenseRepository;
import com.grownited.repository.SubcategoryRepository;
import com.grownited.repository.VendorRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class ExpenseController {
	
	@Autowired
	ExpenseRepository expenseRepository;
	
	@Autowired
	AccountRepository accountRepository;
	
	@Autowired
	CategoryRepository categoryRepository;
	
	@Autowired
	SubcategoryRepository subcategoryRepository;
	
	@Autowired
	VendorRepository vendorRepository;
	
	
	@Autowired
	Cloudinary cloudinary;
	
	@GetMapping("newexpense")
	public String newexpense(HttpSession session ,Model model) {
		

		List<AccountEntity> accountList =  accountRepository.findAll();
		
		model.addAttribute("accountList", accountList);
	
		
		List<CategoryEntity> categoryList =  categoryRepository.findAll();
		
		model.addAttribute("categoryList", categoryList);
		
		
		List<SubcategoryEntity> subcategoryList =  subcategoryRepository.findAll();
		
		model.addAttribute("subcategoryList", subcategoryList);
		
		session.setAttribute("subcategoryList", subcategoryList);
	
		
		List<VendorEntity> vendorList =  vendorRepository.findAll();
		
		model.addAttribute("vendorList", vendorList);
		
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
		
	
		List<Object[]> expense = expenseRepository.getByexpenseId(expenseId);
		
	
		model.addAttribute("expense", expense);

		
		
		return "ViewExpense";
	}
	
	

	@GetMapping("editexpense")
	public String editexpense(Integer expenseId,Model model) {
		
		
		Optional<ExpenseEntity> op = expenseRepository.findById(expenseId);
		
		List<AccountEntity> accountList =  accountRepository.findAll();
		
		model.addAttribute("accountList", accountList);
	
		
		List<CategoryEntity> categoryList =  categoryRepository.findAll();
		
		model.addAttribute("categoryList", categoryList);
		
		
		List<SubcategoryEntity> subcategoryList =  subcategoryRepository.findAll();
		
		model.addAttribute("subcategoryList", subcategoryList);
		
//		session.setAttribute("subcategoryList", subcategoryList);
	
		
		List<VendorEntity> vendorList =  vendorRepository.findAll();
		
		model.addAttribute("vendorList", vendorList);
		
//		List<CategoryEntity> categoryList =  categoryRepository.findAll();
		
		if (op.isEmpty()) {
			return "redirect:/listexpense";
		} else {
			
			
//			model.addAttribute("categoryList", categoryList);
			model.addAttribute("expense",op.get());
			return "EditExpense";

		}
	}
	//save -> entity -> no id present -> insert 
	//save -> entity -> id present -> not present in db -> insert 
	//save -> entity -> id present -> present in db -> update  

	@PostMapping("updateexpense")
	public String updateexpense(ExpenseEntity expenseEntity) {
		
		System.out.println("expenseEntity.getExpenseId() ====>"+expenseEntity.getExpenseId());//id? db? 

		Optional<ExpenseEntity> op = expenseRepository.findById(expenseEntity.getExpenseId());
		
		if(op.isPresent())
		{
			ExpenseEntity dbExpense = op.get(); 
			dbExpense.setExpenseName(expenseEntity.getExpenseName());
			dbExpense.setAmount(expenseEntity.getAmount());
			dbExpense.setDescription(expenseEntity.getDescription());
			dbExpense.setTransactionDate(expenseEntity.getTransactionDate());
			dbExpense.setStatus(expenseEntity.getStatus());
			dbExpense.setAccountId(expenseEntity.getAccountId());
			dbExpense.setCategoryId(expenseEntity.getCategoryId());
			dbExpense.setSubcategoryId(expenseEntity.getSubcategoryId());
			dbExpense.setVendorId(expenseEntity.getVendorId());
			
			expenseRepository.save(dbExpense);
			
			//
		}
		return "redirect:/listexpense";
	}
	
	
	
	
	
	
	
	
	@GetMapping("deleteexpense")
	public String deleteexpense(Integer expenseId) {
		
		expenseRepository.deleteById(expenseId);
		
		System.out.println("Expense successfully deleted!");
		
		return "redirect:/listexpense";
	}
	
	
}
