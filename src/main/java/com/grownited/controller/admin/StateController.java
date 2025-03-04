package com.grownited.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.StateEntity;
import com.grownited.repository.StateRepository;



@Controller
public class StateController {
	
	@Autowired
	StateRepository stateRepository ;
	
	
	
	
	@GetMapping("newstate")
	public String newState() {
		
		return  "NewState";
	}
	
	@PostMapping("savestate")
	public String saveState(StateEntity stateEntity) {
		
		System.out.println(stateEntity.getStateName());
		
		stateRepository.save(stateEntity);
		
		return "redirect:/liststate";
	}
	
	@GetMapping("liststate")
	public String listState(StateEntity stateEntity,Model model) {
		
		List<StateEntity> allState = stateRepository.findAll();
		
		model.addAttribute("allState", allState);
		
		return  "ListState";
	}
	
}
