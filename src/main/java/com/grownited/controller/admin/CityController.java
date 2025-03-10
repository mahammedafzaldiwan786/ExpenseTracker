package com.grownited.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.dto.CityDto;
import com.grownited.entity.CityEntity;
import com.grownited.entity.StateEntity;
import com.grownited.repository.CityRepository;
import com.grownited.repository.StateRepository;


@Controller
public class CityController {
	
	@Autowired
	CityRepository cityRepository;
	
	@Autowired
	StateRepository stateRepository;
	
	
	@GetMapping("newcity")
	public String newcity(Model model) {
		
		
		List<StateEntity> allState = stateRepository.findAll();// all state
		
		model.addAttribute("allState",allState);
		return "NewCity";
	}
	
	@PostMapping("savecity")
	public String savecity(CityEntity entityCity) {
		
		cityRepository.save(entityCity);
		
		return "redirect:/listcity";
	}
	
	@GetMapping("listcity")
	public String listCity(Model model) {
		
		List<Object> allCity = cityRepository.getAll();

		model.addAttribute("allCity",allCity);
		
		return "ListCity";
	}
}
