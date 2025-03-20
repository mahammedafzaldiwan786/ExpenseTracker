package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.UserEntity;
import com.grownited.entity.VendorEntity;
import com.grownited.repository.VendorRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class VendorController {
	
	@Autowired
	VendorRepository vendorRepository;
	
	@GetMapping("newvendor")
	public String newvendor() {
		
		
		return "NewVendor";
	}
	
	
	@PostMapping("savevendor")
	public String savevendor(HttpSession session,VendorEntity vendorEntity){
		
		UserEntity user = (UserEntity) session.getAttribute("user");
		Integer userId = user.getUserId();
		vendorEntity.setUserId(userId);
		
		
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
		
//		Optional<VendorEntity> op = vendorRepository.findById(vendorId);
		
		List<Object[]> vendor  = vendorRepository.getByVendorId(vendorId);
		
		model.addAttribute("vendor", vendor);

		
		
		return "ViewVendor";
	}
	
	
	
	
	
	

	@GetMapping("editvendor")
	public String editvendor(Integer vendorId,Model model) {
		
		Optional<VendorEntity> op = vendorRepository.findById(vendorId);
		
		
		if (op.isEmpty()) {
			return "redirect:/listvendor";
		} else {
			
			
			
			model.addAttribute("vendor",op.get());
			return "EditVendor";

		}
	}
	//save -> entity -> no id present -> insert 
	//save -> entity -> id present -> not present in db -> insert 
	//save -> entity -> id present -> present in db -> update  

	@PostMapping("updatevendor")
	public String updatevendor(VendorEntity vendorEntity) {
		
		System.out.println("vendorEntity.getVendorId()( ====>"+vendorEntity.getVendorId());//id? db? 

		Optional<VendorEntity> op = vendorRepository.findById(vendorEntity.getVendorId());
		
		if(op.isPresent())
		{
			VendorEntity dbVendor = op.get(); 
			dbVendor.setVendorName(vendorEntity.getVendorName());
			
			
			
			//
			vendorRepository.save(dbVendor);
		}
		return "redirect:/listvendor";
	}
	
	

	
	@GetMapping("deletevendor")
	public String deletevendor(Integer vendorId) {
		
		vendorRepository.deleteById(vendorId);
		
		System.out.println("Vendor successfully deleted!");
		
		return "redirect:/listvendor";
	}	
	
	
	
}
