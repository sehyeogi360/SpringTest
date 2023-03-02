package com.marondal.spring.test.jsp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.marondal.spring.test.jsp.bo.RealtorBO;
import com.marondal.spring.test.jsp.model.Realtor;

@Controller
@RequestMapping("/jsp/test02")


public class RealtorController {
	
	@Autowired RealtorBO realtorBO;
	
	//@ModelAttribute이용해라 이글 무시하기
	@PostMapping("/add_realtor") // 입력 action URL	(추가)
	public String getRealtor(
			@RequestParam(value="office", required=false) String office
			, @RequestParam(value="phoneNumber", required=false) String phoneNumber
			, @RequestParam(value="address", required=false ) String address
			, @RequestParam(value="grade", required=false) String grade
			, Model model) {
		
		Realtor realtor = new Realtor();

		realtor.setOffice(office);
		realtor.setPhoneNumber(phoneNumber);
		realtor.setAddress(address);
		realtor.setGrade(grade);
		
		int count = realtorBO.addRealtorByObject(realtor);
		
		model.addAttribute("realtor", realtor);
		
		return "jsp/lastrealtor";
	}
	
	@GetMapping("/lastRealtor") // 최근에 저장된거 조회
	public String lastRealtor(Model model) {
		
		Realtor lastRealtor = realtorBO.getLastRealtor();
		
		model.addAttribute("realtor", lastRealtor);
		
		return "jsp/lastrealtor";
		
		
	}
	
	
	
	@GetMapping("/1") //입력폼으로
	public String addRealtor() {
		return "jsp/realtorInput";
	}
	
	

}
