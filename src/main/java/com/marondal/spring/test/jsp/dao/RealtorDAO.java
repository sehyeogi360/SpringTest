package com.marondal.spring.test.jsp.dao;

import org.apache.ibatis.annotations.Param;

import com.marondal.spring.test.jsp.model.Realtor;

public interface RealtorDAO {
	

	public int insertRealtor(
			@Param("office") String office
			, @Param("phoneNumber") String phoneNumber
			, @Param("address") String address
			, @Param("grade") String grade
			
			); 
	
	public Realtor selectRealtor();
	
		
		

}
