package com.grownited.dto;

public class SubcategoryDto {
	
	private Integer subcategoryId;
	private String subcategoryName;
	private Integer categoryId;//fk
	private Integer userId;//fk
	private String categoryName;
	

	
	
	

	
	public SubcategoryDto(Integer subcategoryId, Integer categoryId, Integer userId,String subcategoryName,
			String categoryName) {
		super();
		this.subcategoryId = subcategoryId;
		this.subcategoryName = subcategoryName;
		this.categoryId = categoryId;
		this.userId = userId;
		this.categoryName = categoryName;
	}
	
	
	public Integer getSubcategoryId() {
		return subcategoryId;
	}
	public void setSubcategoryId(Integer subcategoryId) {
		this.subcategoryId = subcategoryId;
	}
	
	public Integer getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getSubcategoryName() {
		return subcategoryName;
	}
	public void setSubcategoryName(String subcategoryName) {
		this.subcategoryName = subcategoryName;
	}
	
	
	
	
	
}
