package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.ExpenseEntity;

@Repository
public interface ExpenseRepository extends JpaRepository<ExpenseEntity, Integer>{
	
	
	@Query(value = " select e.*,u.first_name,a.account_name,c.category_name,s.subcategory_name,v.vendor_name from expenses e,accounts a,users u,categories c,subcategories s,vendors v where e.account_id = a.account_id and e.user_id = u.user_id and e.category_id = c.category_id and e.subcategory_id = s.subcategory_id and e.vendor_id = v.vendor_id and e.expense_id = :expenseId", nativeQuery = true)
	List<Object[]> getByexpenseId(Integer expenseId);
	
	
	
}
