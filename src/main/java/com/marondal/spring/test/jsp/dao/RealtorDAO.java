package com.marondal.spring.test.jsp.dao;

import org.apache.ibatis.annotations.Param;

import com.marondal.spring.test.jsp.model.Realtor;
import com.marondal.spring.test.jsp.model.Seller;

public interface RealtorDAO {
	

	public int insertRealtor(
			@Param("office") String office
			, @Param("phoneNumber") String phoneNumber
			, @Param("address") String address
			, @Param("grade") String grade
			
			); 
	
	public int insertRealtorByObject(Realtor realtor);
	
	public Realtor selectRealtor();
	
	public Realtor selectLastRealtor();
		
		

}
