package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.AccountEntity;
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
		
		List<Object[]>  income = incomeRepository.getByIncomeId(incomeId);
		
	
		model.addAttribute("income", income);

		
		
		return "ViewIncome";
	}
	
	
	
	

	@GetMapping("editincome")
	public String editincome(Integer incomeId,Model model) {
		
		
		Optional<IncomeEntity> op = incomeRepository.findById(incomeId);
		
		List<AccountEntity> accountList =  accountRepository.findAll();
		
		if (op.isEmpty()) {
			return "redirect:/listincome";
		} else {
			
			
			model.addAttribute("accountList", accountList);
			model.addAttribute("income",op.get());
			return "EditIncome";

		}
	}
	//save -> entity -> no id present -> insert 
	//save -> entity -> id present -> not present in db -> insert 
	//save -> entity -> id present -> present in db -> update  

	@PostMapping("updateincome")
	public String updateincome(IncomeEntity incomeEntity) {
		
		System.out.println("expenseEntity.getExpenseId() ====>"+incomeEntity.getIncomeId());//id? db? 

		Optional<IncomeEntity> op = incomeRepository.findById(incomeEntity.getIncomeId());
		
		if(op.isPresent())
		{
			IncomeEntity dbIncome = op.get(); 
			dbIncome.setIncomeName(incomeEntity.getIncomeName());
			dbIncome.setAccountId(incomeEntity.getAccountId());
			dbIncome.setAmount(incomeEntity.getAmount());
			dbIncome.setTransactionDate(incomeEntity.getTransactionDate());
			dbIncome.setDescription(incomeEntity.getDescription());
			dbIncome.setStatus(incomeEntity.getStatus());
			
			incomeRepository.save(dbIncome);
			
			//
		}
		return "redirect:/listincome";
	}
	
	
	
	
	
	
	
	
	@GetMapping("deleteincome")
	public String deleteincome(Integer incomeId) {
		
		incomeRepository.deleteById(incomeId);
		
		System.out.println("Income successfully deleted!");
		
		return "redirect:/listincome";
	}
	
	
	
}
