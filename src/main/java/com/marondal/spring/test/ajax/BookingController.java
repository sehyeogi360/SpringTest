package com.marondal.spring.test.ajax;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.marondal.spring.test.ajax.bo.BookingBO;
import com.marondal.spring.test.ajax.model.Booking;

@Controller
@RequestMapping("/ajax/booking")
public class BookingController {

	@Autowired 
	private BookingBO bookingBO;
	
	@GetMapping("/list")
	public String bookingList(Model model) {//바로 jsp에 잡는게 아닌 model 에서 셋팅

		List<Booking> bookingList = bookingBO.getbookingList();
		
		model.addAttribute("bookingList", bookingList);
		//jsp에 필요한 값들 채워나감 데이터조회 하기-> 비오한테 시키기
		return "/ajax/booking/list";
				
	}
	
	
	@GetMapping("/main") //하나의 데이터만을 조회 리스폰스바디형태의 json형태의 문자열만 만드는 과정만있다. 자바스크립트만 해결
	public String bookingMain(Model model) {
		
		
		return "/ajax/booking/main";
				
	}
	
	
	@GetMapping("/input") 
	
	public String inputBooking() {
		
		return "ajax/booking/input";
	
	}
	
	

	
	@GetMapping("/add")//map //입력을 위한 api //보안적으로 문제될게 있는지? 등등 만약 그런게 없으면 그냥 get
	@ResponseBody//404에러 뜸 이거 안하면 api에서 404뜨면 이거 확인
	public Map<String, String> addBooking(//request Parameter로 전달받는다.
			@RequestParam("name") String name			
			,@DateTimeFormat(pattern="yyyy년 MM월 dd일")//데이트객체로 변환시키기 그해당 객체의 원래 연월일시분초를 써줘야함 2023-03-15 이런식으로 하고 싶으면 마찬가지로 규격 수정하면됨 마이sql 규격 대로 입력하는거 데이트 픽커 사용안한다고 그리 되는게 아님
			 @RequestParam("date") Date date//Date가 아닌 String 일시 직접입력만 저장되고 데이트픽커 활용시 예약에러 한마디로 하나의 규격만 알아먹음 
			, @RequestParam("day") int day
			, @RequestParam("headcount") int headcount
			, @RequestParam("phoneNumber") String phoneNumber
			) {//여기도 status가 없다. 비오도 마찬가지

		int count = bookingBO.addBooking(name, date, day, headcount, phoneNumber);//실행된 행의 갯수
		// 디버깅 모드 되면 호출된거 호출 안되면 아작스 오타라던가 아작스 사용법 검증해보기
		// 성공 : {"result": "success"}
		// 실패 : {"result": "fail"}
		
		Map<String, String> resultMap = new HashMap<>();
		
		
		if(count == 1) {//성공 했을시
			resultMap.put("result", "success");
		} else {//실패 했을시
			resultMap.put("result", "fail");
		}
		
		return resultMap;
		
	}
	
	@GetMapping("/delete")//map
	@ResponseBody
	public Map<String, String> deleteBooking(
				@RequestParam("id") int id) {
		
		
		int count = bookingBO.deleteBooking(id);
		
		// 성공 : {"result": "success"}
		// 실패 : {"result": "fail"}
		
		Map<String, String> resultMap = new HashMap<>();
		
		if(count == 1) {//성공 했을시
			resultMap.put("result", "success");
		} else {//실패 했을시
			resultMap.put("result", "failure");
		}
		
		return resultMap;
		
	}
	
	
	
	
	
	
}
