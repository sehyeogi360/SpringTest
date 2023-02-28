package com.marondal.spring.test.jsp.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.marondal.spring.test.jsp.dao.SellerDAO;
import com.marondal.spring.test.jsp.model.Seller;

@Service
public class SellerBO {
	
	@Autowired
	private SellerDAO sellerDAO; //다오 객체
	
	public int addSeller(String nickname, double temperature, String profileImage) {//닉네임, url, 온도 전달 받는다. 그리고 insert한다.
		return sellerDAO.insertSeller(nickname, temperature, profileImage);
		
	}
	
	public Seller getLastSeller() {//최근 추가된 유저 
		return sellerDAO.selectLastSeller(); //특별한 조건을 걸 이유가 없다.		
	}
	
	public Seller getSeller(int id) {//최근 추가된 유저 
		return sellerDAO.selectSeller(id); //특별한 조건을 걸 이유가 없다. bo가됐으니 dao 신경쓸필요도 없다.		
	}
}
