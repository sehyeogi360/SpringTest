package com.marondal.spring.test.jsp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	@PostMapping("/add_realtor") // 입력 action URL	(추가) 포스트할 이유가없으면 겟이라고 한다. 
	public String getRealtor(//id는 테이블 인서트되면서 추가되는값이므로 없음
//			@RequestParam(value="office", required=false) String office //이름, 전화번호, 주소, 등급 전달
//			, @RequestParam(value="phoneNumber", required=false) String phoneNumber
//			, @RequestParam(value="address", required=false ) String address //밸류값과 변수값이 반드시 일치할필요 업다(?)
//			, @RequestParam(value="grade", required=false) String grade //요데이터들에 해당하는 객체에 저장
			@ModelAttribute Realtor realtor//위에거가 아닌 객체를 전달받아서 할수도 있다. 단얘도 어노테이션 필요
			, Model model) {//모델 객체를 얻어와서 jsp에서 사용할 데이터
		
//		Realtor realtor = new Realtor();//생성자 따로 안만들어서 기본생성자
//		realtor.setOffice(office);
//		realtor.setPhoneNumber(phoneNumber);
//		realtor.setAddress(address);
//		realtor.setGrade(grade);
		
		int count = realtorBO.addRealtorByObject(realtor);//이거 없으면 id 값이 0떠버리는데 그이유가??
		
		model.addAttribute("realtor", realtor);
		
		return "jsp/lastrealtor";//jsp경로 리턴
		
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
