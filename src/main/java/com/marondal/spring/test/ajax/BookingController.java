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
	public String bookingList(Model model) {

		List<Booking> bookList = bookingBO.getbookingList();
		
		model.addAttribute("bookList", bookList);
		
		return "/ajax/booking/list";
				
	}
	
	@GetMapping("/main")
	public String bookingMain(Model model) {


		return "/ajax/booking/main";
				
	}
	
	@PostMapping("/add")//map
	@ResponseBody
	public Map<String, String> addBooking(
			@RequestParam("name") String name			
			,@DateTimeFormat(pattern="yyyy년 MM월 dd일")
			 @RequestParam("date") Date date
			, @RequestParam("day") int day
			, @RequestParam("headcount") int headcount
			, @RequestParam("phoneNumber") String phoneNumber
			) {

		int count = bookingBO.addBooking(name, date, day, headcount, phoneNumber);
		
		
		Map<String, String> resultMap = new HashMap<>();
		
		
		if(count == 1) {//성공했을시
			resultMap.put("result", "success");
		} else {//실패했을시
			resultMap.put("result", "failure");
		}
		
		return resultMap;
		
	}
	
	@GetMapping("/delete")//map
	public Map<String, String> deleteBooking(
				@RequestParam("id") int id) {
		
		
		int count = bookingBO.deleteBooking(id);
		
		Map<String, String> resultMap = new HashMap<>();
		
		if(count == 1) {
			resultMap.put("result", "success");
		} else {
			resultMap.put("result", "failure");
		}
		
		return resultMap;
		
	}
	
}
