package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.AccountEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.AccountRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class AccountController {
	
	@Autowired
	AccountRepository accountRepository;
	
	@GetMapping("newaccount")
	public String newaccount() {
		
		return "NewAccount";
	}
	
	
	@PostMapping("saveaccount")
	public String saveaccount(HttpSession session,AccountEntity accountEntity){
		
		UserEntity user = (UserEntity) session.getAttribute("user");
		Integer userId = user.getUserId();
		accountEntity.setUserId(userId);

		
		System.out.println(userId);
		
		accountRepository.save(accountEntity);
		
		return "redirect:/listaccount";
	}
	
	
	@GetMapping("listaccount")
	public String listaccount(Model model) {
		
		List<AccountEntity> accountList =  accountRepository.findAll();

		model.addAttribute("accountList",accountList);
		
		return "ListAccount";
	}
	
	
	@GetMapping("viewaccount")
	public String viewaccount(Integer accountId,Model model) {
		
	System.out.println("Account ID : "+accountId);
		
		List<Object[]> account = accountRepository.getByAccountId(accountId);
		
		model.addAttribute("account", account);
		
		return "ViewAccount";
	}
	
	

	@GetMapping("editaccount")
	public String editaccount(Integer accountId,Model model) {
		
		
		Optional<AccountEntity> op = accountRepository.findById(accountId);
		
//		List<CategoryEntity> categoryList =  categoryRepository.findAll();
		
		if (op.isEmpty()) {
			return "redirect:/listaccount";
		} else {
			
			
//			model.addAttribute("categoryList", categoryList);
			model.addAttribute("account",op.get());
			return "EditAccount";

		}
	}
	//save -> entity -> no id present -> insert 
	//save -> entity -> id present -> not present in db -> insert 
	//save -> entity -> id present -> present in db -> update  

	@PostMapping("updateaccount")
	public String updateaccount(AccountEntity accountEntity) {
		
		System.out.println("accountEntity.getAccountId()) ====>"+accountEntity.getAccountId());//id? db? 

		Optional<AccountEntity> op = accountRepository.findById(accountEntity.getAccountId());
		
		if(op.isPresent())
		{
			AccountEntity dbAccount = op.get(); 
			dbAccount.setAccountName(accountEntity.getAccountName());
			dbAccount.setAmount(accountEntity.getAmount());
			dbAccount.setDescription(accountEntity.getDescription());
			
			
			accountRepository.save(dbAccount);
			//
		}
		return "redirect:/listaccount";
	}
	
	
	
	@GetMapping("deleteaccount")
	public String deleteuser(Integer accountId) {
		
		accountRepository.deleteById(accountId);
		
		System.out.println("Account successfully deleted!");
		
		return "redirect:/listaccount";
	}

	
//	-------------------------------------------------------------------------------------
	
	
	
	@GetMapping("adminnewaccount")
	public String adminnewaccount() {
		
		return "AdminNewAccount";
	}
	
	
	@PostMapping("adminsaveaccount")
	public String adminsaveaccount(HttpSession session,AccountEntity accountEntity){
		
		UserEntity user = (UserEntity) session.getAttribute("user");
		Integer userId = user.getUserId();
		accountEntity.setUserId(userId);

		
		System.out.println(userId);
		
		accountRepository.save(accountEntity);
		
		return "redirect:/adminlistaccount";
	}
	
	
	@GetMapping("adminlistaccount")
	public String adminlistaccount(Model model) {
		
		List<AccountEntity> accountList =  accountRepository.findAll();

		model.addAttribute("accountList",accountList);
		
		return "AdminListAccount";
	}
	
	
	@GetMapping("adminviewaccount")
	public String adminviewaccount(Integer accountId,Model model) {
		
	System.out.println("Account ID : "+accountId);
		
		List<Object[]> account = accountRepository.getByAccountId(accountId);
		
		model.addAttribute("account", account);
		
		return "AdminViewAccount";
	}
	
	

	@GetMapping("admineditaccount")
	public String admineditaccount(Integer accountId,Model model) {
		
		
		Optional<AccountEntity> op = accountRepository.findById(accountId);
		
//		List<CategoryEntity> categoryList =  categoryRepository.findAll();
		
		if (op.isEmpty()) {
			return "redirect:/adminlistaccount";
		} else {
			
			
//			model.addAttribute("categoryList", categoryList);
			model.addAttribute("account",op.get());
			return "AdminEditAccount";

		}
	}
	//save -> entity -> no id present -> insert 
	//save -> entity -> id present -> not present in db -> insert 
	//save -> entity -> id present -> present in db -> update  

	@PostMapping("adminupdateaccount")
	public String adminupdateaccount(AccountEntity accountEntity) {
		
		System.out.println("accountEntity.getAccountId()) ====>"+accountEntity.getAccountId());//id? db? 

		Optional<AccountEntity> op = accountRepository.findById(accountEntity.getAccountId());
		
		if(op.isPresent())
		{
			AccountEntity dbAccount = op.get(); 
			dbAccount.setAccountName(accountEntity.getAccountName());
			dbAccount.setAmount(accountEntity.getAmount());
			dbAccount.setDescription(accountEntity.getDescription());
			
			
			accountRepository.save(dbAccount);
			//
		}
		return "redirect:/adminlistaccount";
	}
	
	
	
	@GetMapping("admindeleteaccount")
	public String admindeleteuser(Integer accountId) {
		
		accountRepository.deleteById(accountId);
		
		System.out.println("Account successfully deleted!");
		
		return "redirect:/adminlistaccount";
	}

}
