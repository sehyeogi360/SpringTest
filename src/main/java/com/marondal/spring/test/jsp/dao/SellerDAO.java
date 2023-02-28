package com.marondal.spring.test.jsp.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.marondal.spring.test.jsp.model.Seller;

@Repository
public interface SellerDAO {
	
	public int insertSeller(
			@Param("nickname") String nickname, //여긴 테이블 쿼리랑 아무 상관없는 곳이라 함 @Param은 키워드를 지정해주는 역할일뿐 xml과
			@Param("temperature") double temperature,
			@Param("profileImage") String profileImage
			);

	public Seller selectLastSeller(); //최근 한 사용자를 조회 함. 타입은 딱하나만 조회하므로 Seller

	public Seller selectSeller(@Param("id") int id); //id전달받아서  이거관련된건 비오 아님 매퍼
}
