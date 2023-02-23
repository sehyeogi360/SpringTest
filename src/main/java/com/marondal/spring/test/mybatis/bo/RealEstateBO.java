package com.marondal.spring.test.mybatis.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.marondal.spring.test.mybatis.dao.RealEstateDAO;
import com.marondal.spring.test.mybatis.model.RealEstate;

@Service
public class RealEstateBO {
	
	@Autowired
	private RealEstateDAO realEstateDAO;

	public RealEstate getRealEstate(int id) {//리턴타입 그대로 잡아준다. 아이디 전달하면 그에 대응하는 리얼에스테이트 객체로 전달
		
		RealEstate realestate = realEstateDAO.selectRealEstate(id);
		
		return realestate;
	
	
	}
}
