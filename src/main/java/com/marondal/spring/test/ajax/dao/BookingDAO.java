package com.marondal.spring.test.ajax.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.marondal.spring.test.ajax.model.Booking;

@Repository
public interface BookingDAO {

	
	public List<Booking> selectBookingList(); 
	
	public int insertBookingList(@Param("name") String name
							, @Param("date") Date date
							, @Param("day") int day
							, @Param("headcount") int headcount
							, @Param("phoneNumber") String phoneNumber
										); 
	
	public int deleteBookingList(@Param("id") int id);


	
	
}
