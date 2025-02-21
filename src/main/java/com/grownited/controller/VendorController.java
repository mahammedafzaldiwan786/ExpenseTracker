package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.VendorEntity;
import com.grownited.repository.VendorRepository;

@Controller
public class VendorController {
	
	@Autowired
	VendorRepository vendorRepository;
	
	@GetMapping("newvendor")
	public String newvendor() {
		
		
		return "NewVendor";
	}
	
	
	@PostMapping("savevendor")
	public String savevendor(VendorEntity vendorEntity){
		
		vendorRepository.save(vendorEntity);
		
		return "redirect:/listvendor";
	}
	
	
	@GetMapping("listvendor")
	public String listvendor(Model model) {
		
		List<VendorEntity> vendorList =  vendorRepository.findAll();
		
		model.addAttribute("vendorList",vendorList);
		
		return "ListVendor";
	}
	
	
	@GetMapping("viewvendor")
	public String viewvendor(Integer vendorId,Model model) {
		
	System.out.println("Vendor ID : "+vendorId);
		
		Optional<VendorEntity> op = vendorRepository.findById(vendorId);
		
		if (op.isEmpty()) {
			// not found
		} else {
			// data found
			VendorEntity vendor = op.get();
			// send data to jsp ->
			model.addAttribute("vendor", vendor);

		}
		
		return "ViewVendor";
	}
	
	
	@GetMapping("deletevendor")
	public String deletevendor(Integer vendorId) {
		
		vendorRepository.deleteById(vendorId);
		
		System.out.println("Vendor successfully deleted!");
		
		return "redirect:/listvendor";
	}	
	
	
	
}
