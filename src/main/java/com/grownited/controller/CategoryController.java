package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CategoryEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.CategoryRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class CategoryController {
	
	
	@Autowired
	CategoryRepository categoryRepository;
	
	@GetMapping("newcategory")
	public String newcategory() {
		
		
		return "NewCategory";
	}
	
	
	@PostMapping("savecategory")
	public String savecategory(CategoryEntity categoryEntity,HttpSession session){
		
		
		UserEntity user = (UserEntity) session.getAttribute("user");
		Integer userId = user.getUserId();
		categoryEntity.setUserId(userId);
		
		categoryRepository.save(categoryEntity);
		
		return "redirect:/listcategory";
	}
	
	
	@GetMapping("listcategory")
	public String listcategory(Model model) {
		
		List<CategoryEntity> categoryList =  categoryRepository.findAll();
		
		model.addAttribute("categoryList",categoryList);
		
		return "ListCategory";
	}
	
	
	@GetMapping("viewcategory")
	public String viewcategory(Integer categoryId,Model model) {
		
		System.out.println("Category ID : "+categoryId);
		
		List<Object[]> category = categoryRepository.getBycategoryId(categoryId);
		
	
			model.addAttribute("category", category);

		
		
		return "ViewCategory";
	}
	
	
	@GetMapping("deletecategory")
	public String deletecategory(Integer categoryId) {
		
		categoryRepository.deleteById(categoryId);
		
		System.out.println("Category successfully deleted!");
		
		return "redirect:/listcategory";
	}	
	
	
	
	
	
}
