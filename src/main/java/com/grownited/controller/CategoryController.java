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
	
	
	
	

	@GetMapping("editcategory")
	public String editcategory(Integer categoryId,Model model) {
		
		Optional<CategoryEntity> op = categoryRepository.findById(categoryId);
		
		
		if (op.isEmpty()) {
			return "redirect:/listcategory";
		} else {
			
			
			
			model.addAttribute("category",op.get());
			return "EditCategory";

		}
	}
	//save -> entity -> no id present -> insert 
	//save -> entity -> id present -> not present in db -> insert 
	//save -> entity -> id present -> present in db -> update  

	@PostMapping("updatecategory")
	public String updatecategory(CategoryEntity categoryEntity) {
		
		System.out.println("categoryEntity.getCategoryId( ====>"+categoryEntity.getCategoryId());//id? db? 

		Optional<CategoryEntity> op = categoryRepository.findById(categoryEntity.getCategoryId());
		
		if(op.isPresent())
		{
			CategoryEntity dbCategory = op.get(); 
			dbCategory.setCategoryName(categoryEntity.getCategoryName());
			
			
			//
			categoryRepository.save(dbCategory);
		}
		return "redirect:/listcategory";
	}
	
	
	
	@GetMapping("deletecategory")
	public String deletecategory(Integer categoryId) {
		
		categoryRepository.deleteById(categoryId);
		
		System.out.println("Category successfully deleted!");
		
		return "redirect:/listcategory";
	}	

	
//	---------------------------------------------------------------------------------------------------------
	
	
	@GetMapping("adminnewcategory")
	public String adminnewcategory() {
		
		
		return "AdminNewCategory";
	}
	
	
	@PostMapping("adminsavecategory")
	public String adminsavecategory(CategoryEntity categoryEntity,HttpSession session){
		
		
		UserEntity user = (UserEntity) session.getAttribute("user");
		Integer userId = user.getUserId();
		categoryEntity.setUserId(userId);
		
		categoryRepository.save(categoryEntity);
		
		return "redirect:/adminlistcategory";
	}
	
	
	@GetMapping("adminlistcategory")
	public String adminlistcategory(Model model) {
		
		List<CategoryEntity> categoryList =  categoryRepository.findAll();
		
		model.addAttribute("categoryList",categoryList);
		
		return "AdminListCategory";
	}
	
	
	@GetMapping("adminviewcategory")
	public String adminviewcategory(Integer categoryId,Model model) {
		
		System.out.println("Category ID : "+categoryId);
		
		List<Object[]> category = categoryRepository.getBycategoryId(categoryId);
		
	
			model.addAttribute("category", category);

		
		
		return "AdminViewCategory";
	}
	
	
	
	

	@GetMapping("admineditcategory")
	public String admineditcategory(Integer categoryId,Model model) {
		
		Optional<CategoryEntity> op = categoryRepository.findById(categoryId);
		
		
		if (op.isEmpty()) {
			return "redirect:/adminlistcategory";
		} else {
			
			
			
			model.addAttribute("category",op.get());
			return "AdminEditCategory";

		}
	}
	//save -> entity -> no id present -> insert 
	//save -> entity -> id present -> not present in db -> insert 
	//save -> entity -> id present -> present in db -> update  

	@PostMapping("adminupdatecategory")
	public String adminupdatecategory(CategoryEntity categoryEntity) {
		
		System.out.println("categoryEntity.getCategoryId( ====>"+categoryEntity.getCategoryId());//id? db? 

		Optional<CategoryEntity> op = categoryRepository.findById(categoryEntity.getCategoryId());
		
		if(op.isPresent())
		{
			CategoryEntity dbCategory = op.get(); 
			dbCategory.setCategoryName(categoryEntity.getCategoryName());
			
			
			//
			categoryRepository.save(dbCategory);
		}
		return "redirect:/adminlistcategory";
	}
	
	
	
	@GetMapping("admindeletecategory")
	public String admindeletecategory(Integer categoryId) {
		
		categoryRepository.deleteById(categoryId);
		
		System.out.println("Category successfully deleted!");
		
		return "redirect:/adminlistcategory";
	}	

	
	
	
	
}
