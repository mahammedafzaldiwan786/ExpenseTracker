package com.grownited.controller.admin;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CategoryEntity;
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
	
	

	@GetMapping("viewcity")
	public String viewcity(Integer cityId,Model model) {
		
		System.out.println("city ID : "+cityId);
		
		List<Object[]> city = cityRepository.getByCityId(cityId);
		
	
			model.addAttribute("city", city);

		
		
		return "ViewCity";
	}
	
	
	
	

	@GetMapping("editcity")
	public String editcity(Integer cityId,Model model) {
		
		Optional<CityEntity> op = cityRepository.findById(cityId);
		
		List<StateEntity> stateList =  stateRepository.findAll();
		
		
		if (op.isEmpty()) {
			return "redirect:/listcity";
		} else {
			
			
			model.addAttribute("stateList", stateList);
			model.addAttribute("city",op.get());
			return "EditCity";

		}
	}
	//save -> entity -> no id present -> insert 
	//save -> entity -> id present -> not present in db -> insert 
	//save -> entity -> id present -> present in db -> update  

	@PostMapping("updatecity")
	public String updatecity(CityEntity cityEntity) {
		
		System.out.println("cityEntity.getCityId()( ====>"+cityEntity.getCityId());//id? db? 

		Optional<CityEntity> op = cityRepository.findById(cityEntity.getCityId());
		
		if(op.isPresent())
		{
			CityEntity dbCity = op.get(); 
			dbCity.setCityName(cityEntity.getCityName());
			dbCity.setStateId(cityEntity.getStateId());
			
			
			//
			cityRepository.save(dbCity);
		}
		return "redirect:/listcity";
	}
	
	
	
	@GetMapping("deletecity")
	public String deletecity(Integer cityId) {
		
		cityRepository.deleteById(cityId);
		
		System.out.println("City successfully deleted!");
		
		return "redirect:/listcity";
	}	
	
	
}
