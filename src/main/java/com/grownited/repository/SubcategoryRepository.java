package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.dto.SubcategoryDto;
import com.grownited.entity.SubcategoryEntity;

@Repository
public interface SubcategoryRepository extends JpaRepository<SubcategoryEntity, Integer>{
		
	@Query(value = "select s.*,c.category_name from subcategories s,categories c where s.category_id = c.category_id",nativeQuery = true)
	List<Object[]> getAll();
	
	
	
	@Query(value = "select s.*,c.category_name from subcategories s,categories c where s.category_id = c.category_id and s.subcategory_id = :subcategoryId", nativeQuery = true)
	List<Object[]> getBysubcategoryId(Integer subcategoryId);
	
}
