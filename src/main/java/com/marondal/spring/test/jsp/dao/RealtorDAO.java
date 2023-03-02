package com.marondal.spring.test.jsp.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.marondal.spring.test.jsp.model.Realtor;
import com.marondal.spring.test.jsp.model.Seller;

@Repository//이거 추가
public interface RealtorDAO {
	

	public int insertRealtor(
			@Param("office") String office
			, @Param("phoneNumber") String phoneNumber
			, @Param("address") String address
			, @Param("grade") String grade
			
			); //위에거 필요 없나봄..
	
	public int insertRealtorByObject(Realtor realtor);//인서트는 실행되는 행의 갯수
	
	public Realtor selectRealtor();
	
	public Realtor selectLastRealtor();
		
		

}
