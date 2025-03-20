package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.AccountEntity;


@Repository
public interface AccountRepository extends JpaRepository<AccountEntity, Integer>{

		
	@Query(value = "select a.*,u.first_name from accounts a,users u where a.user_id = u.user_id and a.account_id =  :accountId", nativeQuery = true)
	List<Object[]> getByAccountId(Integer accountId);
	
	
}
