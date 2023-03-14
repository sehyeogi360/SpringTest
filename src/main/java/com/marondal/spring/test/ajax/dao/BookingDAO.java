package com.marondal.spring.test.ajax.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.marondal.spring.test.ajax.model.Booking;

@Repository
public interface BookingDAO {

	
	public List<Booking> selectBookingList(); 
	

	
	public int insertBookingList(@Param("name") String name //xml에서 사용될키워드를 넣어준다. @Param안에 name은 변수명 
							, @Param("date") Date date//String->date
							, @Param("day") int day
							, @Param("headcount") int headcount
							, @Param("phoneNumber") String phoneNumber
							, @Param("state") String state//그냥 여기도 state추가
							); 
	
	public int deleteBookingList(@Param("id") int id);//select 아니면 리턴타입 굳이 고민안해도 됨

	
	public Booking selectBooking(@Param("name") String name //이름과 전화번호가 일치하는것만 조회해야하므로 딱그ㅓ만
			, @Param("phoneNumber") String phoneNumber);
		
		
	

	
	
}
