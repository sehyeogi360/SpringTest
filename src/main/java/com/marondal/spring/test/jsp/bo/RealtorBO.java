package com.marondal.spring.test.jsp.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.marondal.spring.test.jsp.dao.RealtorDAO;
import com.marondal.spring.test.jsp.model.Realtor;

@Service
public class RealtorBO {
	
	@Autowired
	private RealtorDAO realtorDAO;//안전하게 객체관리하기위해서 사용

//	public int addRealtor(String office, String phoneNumber, String address, String grade) {
//		
//		return realtorDAO.insertRealtor(office, phoneNumber, address, grade);
//	}//위에거 필요없나봄
	
	public int addRealtorByObject(Realtor realtor) {
		
		return realtorDAO.insertRealtorByObject(realtor);//실행된 행의 개수 리턴
		
	}
	
	public Realtor getRealtor() {
		
		return realtorDAO.selectRealtor();
	}

//	public Realtor getLastRealtor() {
//		
//		return realtorDAO.selectLastRealtor();
//	}


	
}
