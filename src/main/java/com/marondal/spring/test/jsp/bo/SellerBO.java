package com.marondal.spring.test.jsp.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.marondal.spring.test.jsp.dao.SellerDAO;
import com.marondal.spring.test.jsp.model.Seller;

@Service
public class SellerBO {

	@Autowired
	private SellerDAO sellerDAO;
	
	public int addSeller(String nickname, double temperature, String profileImage) {
		return sellerDAO.insertSeller(nickname, temperature, profileImage);
		
	}
	
	public Seller getLastSeller() {//최근 추가된 유저
		return sellerDAO.selectLastSeller();
		
	}
	
	
}
