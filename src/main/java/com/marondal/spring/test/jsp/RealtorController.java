package com.marondal.spring.test.jsp;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.marondal.spring.test.jsp.model.Realtor;

@Controller
@RequestMapping("/jsp/test02")


public class RealtorController {
	//@ModelAttribute이용해라 이글 무시하기
	@GetMapping("/add_realtor") // 입력 action URL
	
	public String getRealtor(@RequestParam("office") String office
			, @RequestParam("phoneNumber") String phoneNumber
			, @RequestParam("address") String address
			, @RequestParam("grade") String grade
			, Model model) {
		
		Realtor realtor = new Realtor();
		
		realtor.setOffice(office);
		realtor.setPhoneNumber(phoneNumber);
		realtor.setAddress(address);
		realtor.setGrade(grade);
		return "jsp/test02";
	}
	
	
	@GetMapping("/1") //입력폼으로
	public String addRealtor() {
		return "jsp/addrealtor";
	}
	
	

}
