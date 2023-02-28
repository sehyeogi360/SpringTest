package com.marondal.spring.test.jsp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.marondal.spring.test.jsp.bo.SellerBO;
import com.marondal.spring.test.jsp.model.Seller;

@Controller
@RequestMapping("/jsp/test01")
public class SellerController {

	@Autowired
	private SellerBO sellerBO;

	@PostMapping("/add_seller")//삽입결과
	@ResponseBody
	public String addSeller(@RequestParam("nickname") String nickname, @RequestParam("temperature") double temperature,
			@RequestParam("profileImage") String profileImage) {

		int count = sellerBO.addSeller(nickname, temperature, profileImage);

		return "삽입결과 : " + count;
	}

	
	//입력 form
	@GetMapping("/1")//입력창
	public String sellerInput() {
		
		return "/jsp/test01";
	}
	
	
	//2번까지만 해봐도 무난
	
	@GetMapping("/seller_info")//최근에 추가
	public String lastSeller(Model model) {

		Seller lastSeller = sellerBO.getLastSeller();
		
		model.addAttribute("seller", lastSeller);
		
		return "jsp/lastseller";

	}

}
