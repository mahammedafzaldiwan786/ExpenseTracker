package com.grownited.controller.admin;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CityEntity;
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
	
	
	

	@GetMapping("viewstate")
	public String viewstate(Integer stateId,Model model) {
		
		System.out.println("state ID : "+stateId);
		
		List<Object[]> state = stateRepository.getByStateId(stateId);
		
	
			model.addAttribute("state", state);

		
		
		return "ViewState";
	}
	
	
	
	

	@GetMapping("editstate")
	public String editstate(Integer stateId,Model model) {
		
		Optional<StateEntity> op = stateRepository.findById(stateId);
		
		
		
		if (op.isEmpty()) {
			return "redirect:/liststate";
		} else {
		
			model.addAttribute("state",op.get());
			return "EditState";

		}
	}
	//save -> entity -> no id present -> insert 
	//save -> entity -> id present -> not present in db -> insert 
	//save -> entity -> id present -> present in db -> update  

	@PostMapping("updatestate")
	public String updatestate(StateEntity stateEntity) {
		
		System.out.println("stateEntity.getStateId()====>"+stateEntity.getStateId());//id? db? 

		Optional<StateEntity> op = stateRepository.findById(stateEntity.getStateId());
		
		if(op.isPresent())
		{
			StateEntity dbState = op.get(); 
			dbState.setStateName(stateEntity.getStateName());
			
			//
			stateRepository.save(dbState);
		}
		return "redirect:/liststate";
	}
	
	
	
	@GetMapping("deletestate")
	public String deletestate(Integer stateId) {
		
		stateRepository.deleteById(stateId);
		
		System.out.println("State successfully deleted!");
		
		return "redirect:/liststate";
	}	
	
	
}
