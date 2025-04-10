package com.grownited.controller.restcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.grownited.entity.SubcategoryEntity;
import com.grownited.repository.SubcategoryRepository;

@RestController
public class AjaxController {
	
	
	@Autowired
	SubcategoryRepository subCategoryRepository; 
	
	
	@GetMapping("/getallsubcategorybycategoryid/{categoryId}")
	public List<SubcategoryEntity> getAllSubCateByCatId(@PathVariable Integer categoryId) {
		System.out.println(categoryId);
		
		List<SubcategoryEntity> allSubCategory  =  subCategoryRepository.findByCategoryId(categoryId);
			
		
		return allSubCategory;
	}

	
	
}
