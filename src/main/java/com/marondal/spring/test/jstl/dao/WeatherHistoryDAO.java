package com.marondal.spring.test.jstl.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.marondal.spring.test.jstl.model.WeatherHistory;

@Repository
public interface WeatherHistoryDAO {
	
	
	public int insertWeatherHistory(WeatherHistory weatherhistory);//객체 아니면 파라미터로 나열 리턴타입은 int
																	//만약 파라미터 면 날짜는 Date객체 이용
	public List<WeatherHistory> selectWeatherHistoryList();//리스트로 잡기 이러면 한행만 조회
	
}
