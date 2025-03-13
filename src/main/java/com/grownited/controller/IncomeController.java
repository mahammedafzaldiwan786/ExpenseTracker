package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.AccountEntity;
import com.grownited.entity.CategoryEntity;
import com.grownited.entity.IncomeEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.AccountRepository;
import com.grownited.repository.IncomeRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class IncomeController {
	
	@Autowired
	IncomeRepository incomeRepository;
	
	@Autowired
	AccountRepository accountRepository;
	
	@GetMapping("newincome")
	public String newincome(Model model) {
		
		List<AccountEntity> accountList =  accountRepository.findAll();
		
		System.out.println("accountList"+accountList);
		
		model.addAttribute("accountList", accountList);
		
		
		return "NewIncome";
	}
	
	
	@PostMapping("saveincome")
	public String saveincome(HttpSession session,IncomeEntity incomeEntity,Model model ){
		
		UserEntity user = (UserEntity) session.getAttribute("user");
		Integer userId = user.getUserId();
		incomeEntity.setUserId(userId);
		
	
//		AccountEntity account = (AccountEntity) session.getAttribute("account");
//		Integer accountId = account.getAccountId();
//		incomeEntity.setAccountId(accountId);
		
		incomeRepository.save(incomeEntity);
		
		return "redirect:/listincome";
	}
	
	
	@GetMapping("listincome")
	public String listincome(Model model) {
		
		List<IncomeEntity> incomeList =  incomeRepository.findAll();
		
		model.addAttribute("incomeList",incomeList);
		
		return "ListIncome";
	}
	
	
	@GetMapping("viewincome")
	public String viewincome(Integer incomeId,Model model) {
		
	System.out.println("Income ID : "+incomeId);
		
		Optional<IncomeEntity> op = incomeRepository.findById(incomeId);
		
		if (op.isEmpty()) {
			// not found
		} else {
			// data found
			IncomeEntity income = op.get();
			// send data to jsp ->
			model.addAttribute("income", income);

		}
		
		return "ViewIncome";
	}
	
	
	@GetMapping("deleteincome")
	public String deleteincome(Integer incomeId) {
		
		incomeRepository.deleteById(incomeId);
		
		System.out.println("Income successfully deleted!");
		
		return "redirect:/listincome";
	}
	
	
	
}
