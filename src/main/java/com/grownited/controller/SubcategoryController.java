package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.SubcategoryEntity;
import com.grownited.repository.SubcategoryRepository;

@Controller
public class SubcategoryController {
	
	@Autowired
	SubcategoryRepository subcategoryRepository;
	
	@GetMapping("newsubcategory")
	public String newsubcategory() {
		
		
		return "NewSubcategory";
	}
	
	
	@PostMapping("savesubcategory")
	public String savesubcategory(SubcategoryEntity subcategoryEntity){
		
		subcategoryRepository.save(subcategoryEntity);
		
		return "redirect:/listsubcategory";
	}
	
	
	@GetMapping("listsubcategory")
	public String listsubcategory(Model model) {
		
		List<SubcategoryEntity> subcategoryList =  subcategoryRepository.findAll();
		
		model.addAttribute("subcategoryList",subcategoryList);
		
		return "ListSubcategory";
	}
	
	
	@GetMapping("viewsubcategory")
	public String viewsubcategory(Integer subcategoryId,Model model) {
		
	System.out.println("Subcategory ID : "+subcategoryId);
		
		Optional<SubcategoryEntity> op = subcategoryRepository.findById(subcategoryId);
		
		if (op.isEmpty()) {
			// not found
		} else {
			// data found
			SubcategoryEntity subcategory = op.get();
			// send data to jsp ->
			model.addAttribute("subcategory", subcategory);

		}
		
		return "ViewSubcategory";
	}
	
	
	@GetMapping("deletesubcategory")
	public String deletesubcategory(Integer subcategoryId) {
		
		subcategoryRepository.deleteById(subcategoryId);
		
		System.out.println("Subcategory successfully deleted!");
		
		return "redirect:/listsubcategory";
	}	
	
	
	
	
	
}
