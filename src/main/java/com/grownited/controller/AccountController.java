package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.AccountEntity;
import com.grownited.repository.AccountRepository;

@Controller
public class AccountController {
	
	@Autowired
	AccountRepository accountRepository;
	
	@GetMapping("newaccount")
	public String newaccount() {
		
		
		return "NewAccount";
	}
	
	
	@PostMapping("saveaccount")
	public String saveaccount(AccountEntity accountEntity){
		
		accountRepository.save(accountEntity);
		
		return "redirect:/listaccount";
	}
	
	
	@GetMapping("listaccount")
	public String listaccount(Model model) {
		
		List<AccountEntity> accountList =  accountRepository.findAll();
		
		model.addAttribute("accountList",accountList);
		
		return "ListAcconut";
	}
	
	
	@GetMapping("viewaccount")
	public String viewaccount(Integer accountId,Model model) {
		
	System.out.println("Account ID : "+accountId);
		
		Optional<AccountEntity> op = accountRepository.findById(accountId);
		
		if (op.isEmpty()) {
			// not found
		} else {
			// data found
			AccountEntity account = op.get();
			// send data to jsp ->
			model.addAttribute("account", account);

		}
		
		return "ViewAccount";
	}
	
	
	@GetMapping("deleteaccount")
	public String deleteuser(Integer accountId) {
		
		accountRepository.deleteById(accountId);
		
		System.out.println("Account successfully deleted!");
		
		return "redirect:/listaccount";
	}
	
}
