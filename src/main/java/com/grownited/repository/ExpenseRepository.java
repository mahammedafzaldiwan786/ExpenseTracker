package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.ExpenseEntity;

@Repository
public interface ExpenseRepository extends JpaRepository<ExpenseEntity, Integer>{
	
	
	@Query(value = " select e.*,u.first_name,a.account_name from expenses e,accounts a,users u where e.account_id = a.account_id and e.user_id = u.user_id and e.expense_id = :expenseId", nativeQuery = true)
	List<Object[]> getByexpenseId(Integer expenseId);
	
	
	
}
