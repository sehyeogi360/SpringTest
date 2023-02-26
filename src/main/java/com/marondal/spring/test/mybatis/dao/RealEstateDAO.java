package com.marondal.spring.test.mybatis.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.marondal.spring.test.mybatis.model.RealEstate;

@Repository
public interface RealEstateDAO {
	public RealEstate selectRealEstate(@Param("id") int id); //xml 에서 사용할 키워드를 파람으로 지정 조회된 결과는 한행의 정보 
	public List<RealEstate> selectRealEstateListByRentPrice(@Param("rentPrice") int rentPrice);//조회이므로 셀렉트 위에는 클래스명 하나만 리턴 얘는 매물들을 리턴이므로 리스트
	public List<RealEstate> selectRealEstateListByAreaPrice(
			@Param("area") int area,
			@Param("price") int price);//리턴타입 여러개니 당연히 리스트
	


	public int insertRealEstateByObject(RealEstate realestate);//진행되는 갯수니 int 객체전달받을땐 파람 어노테이션 x 
	
	public int insertRealEstate(//리턴 타입 int 
			@Param("realtorId")int realtorId,
			@Param("address")String address,
			@Param("area")int area,
			@Param("type")String type,
			@Param("price")int price,
			@Param("rentPrice")int rentPrice
			);
	
	public int updateRealEstate(
			@Param("id") int id, 
			@Param("type")String type,
			@Param("price")int price
			
			);

	
	
}
