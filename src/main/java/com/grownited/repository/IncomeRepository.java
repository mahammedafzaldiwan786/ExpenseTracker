package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.IncomeEntity;

@Repository 
public interface IncomeRepository extends JpaRepository<IncomeEntity, Integer>{
	
	
	@Query(value = "select i.*,u.first_name,a.account_name from users u,incomes i,accounts a where i.user_id = u.user_id and i.account_id = a.account_id and i.income_id = :incomeId", nativeQuery = true)
	List<Object[]> getByIncomeId(Integer incomeId);

}
