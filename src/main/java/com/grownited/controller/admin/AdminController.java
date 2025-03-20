package com.grownited.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {

	@GetMapping("admindashboard")
	public String adminDashboard() {
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
		
}