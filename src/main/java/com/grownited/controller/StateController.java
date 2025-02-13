package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.StateEntity;
import com.grownited.repository.StateRepository;



@Controller
public class StateController {
	
	@Autowired
	StateRepository repoState ;
	
	
	
	
	@GetMapping("newstate")
	public String newState() {
		
		return  "NewState";
	}
	
	@PostMapping("saveState")
	public String saveState(StateEntity state) {
		
		System.out.println(state.getStateName());
		
		repoState.save(state);
		
		return "NewState";
	}
	
}
