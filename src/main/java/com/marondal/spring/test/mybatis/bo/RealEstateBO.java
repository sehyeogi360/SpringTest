package com.marondal.spring.test.mybatis.bo;

import java.util.List;

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
	
	// 전달받은 월세 금액보다 낮은 매물 정보들 리턴
	public List<RealEstate> getRealEstateListByRentPrice(int rentPrice) {//메소드명 의미만 명확하면 상관없다. 
		//정보들을 리턴 정보들이므로 리스트
		List<RealEstate> realEstateList = realEstateDAO.selectRealEstateListByRentPrice(rentPrice);
		
		return realEstateList;
		
	}

	public List<RealEstate> getRealEstateListByAreaPrice(int area, int price) {//parameter 두개
		

		
		return realEstateDAO.selectRealEstateListByAreaPrice(area, price);//그냥 이렇게 표현하기
	}
	

	public int addRealEstateByObject(RealEstate realestate) {
		// TODO Auto-generated method stub
		return realEstateDAO.insertRealEstateByObject(realestate);//리턴 값
	}
	
	public int addRealEstate(int realtorId, String address, int area, String type, int price, int rentPrice) {
		//저장할 파라미터 값들은 realtorId 포함한 모든값들
		return realEstateDAO.insertRealEstate(realtorId, address, area, type, price, rentPrice);
	}


	public int modifyRealEstate(int id, String type, int price) {//내가만든기능에만 집중 자바문법에만 
								
		return realEstateDAO.updateRealEstate(id, type, price);//변경시킬 행의 id를 전달 받고, 전달받은 타입과 가격으로 수정한다. id, type, price 파라미터로
	}
	
	
	public int deleteRealEstate(int id) {//아이디 전달받고 행삭제하는기능 만들어라.
		
		return realEstateDAO.deleteRealEstate(id);	
	}
	
}
