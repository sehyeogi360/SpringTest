package com.marondal.spring.test.jsp.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.marondal.spring.test.jsp.dao.RealtorDAO;
import com.marondal.spring.test.jsp.model.Realtor;
import com.marondal.spring.test.mybatis.dao.RealEstateDAO;

@Service
public class RealtorBO {
	
	@Autowired
	private RealtorDAO realtorDAO;

	public int addRealtor(String office, String phoneNumber, String address, String grade) {
		
		return realtorDAO.insertRealtor(office, phoneNumber, address, grade);
	}
	
	
	public Realtor getRealtor() {
		
		return realtorDAO.selectRealtor();
	}
	
}
