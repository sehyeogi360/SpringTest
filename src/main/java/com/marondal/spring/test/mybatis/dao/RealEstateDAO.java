package com.marondal.spring.test.mybatis.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.marondal.spring.test.mybatis.model.RealEstate;

@Repository
public interface RealEstateDAO {
	public RealEstate selectRealEstate(@Param("id") int id); //xml 에서 사용할 키워드를 파람으로 지정 조회된 결과는 한행의 정보
	public RealEstate selectRealEstate2(@Param("rentPrice") int rentPrice);
	public RealEstate selectRealEstate3(@Param("area") int area);
	public RealEstate selectRealEstate4(@Param("price") int price);
}
