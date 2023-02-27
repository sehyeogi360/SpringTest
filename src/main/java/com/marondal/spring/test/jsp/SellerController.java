package com.marondal.spring.test.jsp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	public String addSeller(@RequestParam("name") String name, @RequestParam("temperature") double temperature,
			@RequestParam("profileImage") String profileImage

	) {

		int count = sellerBO.addSeller(name, temperature, profileImage);

		return "삽입결과 : " + count;
	}

	
	//입력 form
	@PostMapping("/1")//입력창
	@ResponseBody
	
	
	
	//2번까지만 해봐도 무난
	
	@GetMapping("/seller_info")//최근에 추가
	public String lastSeller(Seller seller) {

		Seller lastSeller = sellerBO.getLastSeller();
		return "jsp/lastSeller";

	}

}
