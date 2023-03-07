package com.marondal.spring.test.jstl.bo;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.marondal.spring.test.jstl.dao.WeatherHistoryDAO;
import com.marondal.spring.test.jstl.model.WeatherHistory;

@Service
public class WeatherHistoryBO {

	@Autowired
	private WeatherHistoryDAO weatherhistoryDAO;//클래스 객체가 만들어져야 함. 스트링한테 맡긴다.
	
	
	public int addWeatherHistory(Date date, String weather, double temperatures, double precipitation, String microDust, double windSpeed) {//리턴타입 저장하는과정이므로 int 실행되는 행의 갯수 
																		 // 오브젝트든 아니든	
		return weatherhistoryDAO.insertWeatherHistory(date, weather, temperatures, precipitation, microDust, windSpeed);
	}
	
	public List<WeatherHistory> getWeatherhistory() {//여기도 마찬가지 리스트로 여러행을 조회하므로
		
		List<WeatherHistory> weatherHistoryList = weatherhistoryDAO.selectWeatherHistoryList();
		
		return weatherHistoryList;
	}
}
