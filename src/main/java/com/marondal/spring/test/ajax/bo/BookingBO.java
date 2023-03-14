package com.marondal.spring.test.ajax.bo;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.marondal.spring.test.ajax.dao.BookingDAO;
import com.marondal.spring.test.ajax.model.Booking;



@Service
public class BookingBO {
	
	@Autowired
	private BookingDAO bookingDAO;//dao의 객체를 만드는 과정 스프링 레포지토리거를 이용
	
	public List<Booking> getbookingList() {
		return bookingDAO.selectBookingList();//booking 테이블 조회한걸 리턴
	}


	
	
	public int addBooking(
			String name
			, Date date
			, int day
			, int headcount
			, String phoneNumber) {//굳이 변수로 잡을 필요없다. 변수란 변할수 있는 값이라는 뜻.
		
		return bookingDAO.insertBookingList(name, date, day, headcount,  phoneNumber, "대기중");//이렇게 고정값 넣어준다.
		
	}
	
	public int deleteBooking(int id) {
		
		return bookingDAO.deleteBookingList(id);
		
	}
	
	public Booking searchBooking(String name //마찬가지로 리턴타입부킹
			, String phoneNumber) {
		// TODO Auto-generated method stub
		return bookingDAO.selectBooking(name, phoneNumber);
	}

	
	
}
