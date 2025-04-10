package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CategoryEntity;
import com.grownited.entity.SubcategoryEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.CategoryRepository;
import com.grownited.repository.SubcategoryRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class SubcategoryController {
	
	@Autowired
	SubcategoryRepository subcategoryRepository;
	
	@Autowired
	CategoryRepository categoryRepository;
	
	@GetMapping("newsubcategory")
	public String newsubcategory(Model model) {
		
		List<CategoryEntity> categoryList =  categoryRepository.findAll();
		
		model.addAttribute("categoryList", categoryList);
		
		return "NewSubcategory";
	}
	
	
	@PostMapping("savesubcategory")
	public String savesubcategory(HttpSession session,SubcategoryEntity subcategoryEntity){
		
		UserEntity user = (UserEntity) session.getAttribute("user");
		Integer userId = user.getUserId();
		subcategoryEntity.setUserId(userId);
		
		
		
		subcategoryRepository.save(subcategoryEntity);
		
		return "redirect:/listsubcategory";
	}
	
	
	@GetMapping("listsubcategory")
	public String listsubcategory(Model model) {
		
		List<Object[]> subcategoryList = subcategoryRepository.getAll();
		
		model.addAttribute("allsubcategoryt",subcategoryList);
		
		return "ListSubcategory";
	}
	
	
	@GetMapping("viewsubcategory")
	public String viewsubcategory(Integer subcategoryId,Model model) {
		
	System.out.println("Subcategory ID : "+subcategoryId);
		
		List<Object[]> subcategory = subcategoryRepository.getBysubcategoryId(subcategoryId);
		
		
		model.addAttribute("subcategory", subcategory);

	
		return "ViewSubcategory";
	}
	
	
	
	@GetMapping("editsubcategory")
	public String editsubcategory(Integer subcategoryId,Model model) {
		Optional<SubcategoryEntity> op = subcategoryRepository.findById(subcategoryId);
		
		List<CategoryEntity> categoryList =  categoryRepository.findAll();
		
		if (!op.isPresent()) {
			return "redirect:/listsubcategory";
		} else {
			
			
			model.addAttribute("categoryList", categoryList);
			model.addAttribute("subcategory",op.get());
			return "EditSubcategory";

		}
	}
	//save -> entity -> no id present -> insert 
	//save -> entity -> id present -> not present in db -> insert 
	//save -> entity -> id present -> present in db -> update  

	@PostMapping("updatesubcategory")
	public String updatesubcategory(SubcategoryEntity subcategoryEntity) {
		
		System.out.println("getSubcategoryId ====>"+subcategoryEntity.getSubcategoryId());//id? db? 

		Optional<SubcategoryEntity> op = subcategoryRepository.findById(subcategoryEntity.getSubcategoryId());
		
		if(op.isPresent())
		{
			SubcategoryEntity dbSubcategory = op.get(); 
			dbSubcategory.setSubcategoryName(subcategoryEntity.getSubcategoryName());
			dbSubcategory.setCategoryId(subcategoryEntity.getCategoryId());
			
			//
			subcategoryRepository.save(dbSubcategory);
		}
		return "redirect:/listsubcategory";
	}
	
	
	@GetMapping("deletesubcategory")
	public String deletesubcategory(Integer subcategoryId) {
		
		subcategoryRepository.deleteById(subcategoryId);
		
		System.out.println("Subcategory successfully deleted!");
		
		return "redirect:/listsubcategory";
	}	

	
//	---------------------------------------------------------------------------------------------------
	
	
	@GetMapping("adminnewsubcategory")
	public String adminnewsubcategory(Model model) {
		
		List<CategoryEntity> categoryList =  categoryRepository.findAll();
		
		model.addAttribute("categoryList", categoryList);
		
		return "AdminNewSubcategory";
	}
	
	
	@PostMapping("adminsavesubcategory")
	public String adminsavesubcategory(HttpSession session,SubcategoryEntity subcategoryEntity){
		
		UserEntity user = (UserEntity) session.getAttribute("user");
		Integer userId = user.getUserId();
		subcategoryEntity.setUserId(userId);
		
		
		
		subcategoryRepository.save(subcategoryEntity);
		
		return "redirect:/adminlistsubcategory";
	}
	
	
	@GetMapping("adminlistsubcategory")
	public String adminlistsubcategory(Model model) {
		
		List<Object[]> subcategoryList = subcategoryRepository.getAll();
		
		model.addAttribute("allsubcategoryt",subcategoryList);
		
		return "AdminListSubcategory";
	}
	
	
	@GetMapping("adminviewsubcategory")
	public String adminviewsubcategory(Integer subcategoryId,Model model) {
		
	System.out.println("Subcategory ID : "+subcategoryId);
		
		List<Object[]> subcategory = subcategoryRepository.getBysubcategoryId(subcategoryId);
		
		
		model.addAttribute("subcategory", subcategory);

	
		return "AdminViewSubcategory";
	}
	
	
	
	@GetMapping("admineditsubcategory")
	public String admineditsubcategory(Integer subcategoryId,Model model) {
		Optional<SubcategoryEntity> op = subcategoryRepository.findById(subcategoryId);
		
		List<CategoryEntity> categoryList =  categoryRepository.findAll();
		
		if (!op.isPresent()) {
			return "redirect:/adminlistsubcategory";
		} else {
			
			
			model.addAttribute("categoryList", categoryList);
			model.addAttribute("subcategory",op.get());
			return "AdminEditSubcategory";

		}
	}
	//save -> entity -> no id present -> insert 
	//save -> entity -> id present -> not present in db -> insert 
	//save -> entity -> id present -> present in db -> update  

	@PostMapping("adminupdatesubcategory")
	public String adminupdatesubcategory(SubcategoryEntity subcategoryEntity) {
		
		System.out.println("getSubcategoryId ====>"+subcategoryEntity.getSubcategoryId());//id? db? 

		Optional<SubcategoryEntity> op = subcategoryRepository.findById(subcategoryEntity.getSubcategoryId());
		
		if(op.isPresent())
		{
			SubcategoryEntity dbSubcategory = op.get(); 
			dbSubcategory.setSubcategoryName(subcategoryEntity.getSubcategoryName());
			dbSubcategory.setCategoryId(subcategoryEntity.getCategoryId());
			
			//
			subcategoryRepository.save(dbSubcategory);
		}
		return "redirect:/adminlistsubcategory";
	}
	
	
	@GetMapping("admindeletesubcategory")
	public String admindeletesubcategory(Integer subcategoryId) {
		
		subcategoryRepository.deleteById(subcategoryId);
		
		System.out.println("Subcategory successfully deleted!");
		
		return "redirect:/adminlistsubcategory";
	}	

	
	
	
	
}
