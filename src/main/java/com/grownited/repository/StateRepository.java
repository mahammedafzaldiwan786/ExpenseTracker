package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.StateEntity;

@Repository
public interface StateRepository extends JpaRepository<StateEntity, Integer>{
	
	
	@Query(value = "select * from states  where  state_id =  :stateId", nativeQuery = true)
	List<Object[]> getByStateId(Integer stateId);
	
}
