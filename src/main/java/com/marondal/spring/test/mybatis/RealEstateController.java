package com.marondal.spring.test.mybatis;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.marondal.spring.test.mybatis.bo.RealEstateBO;
import com.marondal.spring.test.mybatis.model.RealEstate;


@Controller
public class RealEstateController {
	
	@Autowired
	private RealEstateBO realEstateBO; //비오객체가 있어야 전달하므로
	
	//전달 받은 id 와 일치하는 데이터 json으로 response 추가
	@RequestMapping("/mybatis/test01")
	@ResponseBody
	public RealEstate realestate(
			@RequestParam("id") int id,
			@RequestParam(value="rentPrice", required=false) int rentPrice,
			@RequestParam(value="area", required=false) int area,
			@RequestParam(value="price", required=false) int price
			
			) //어떤 파라미터로 매칭할지? 리퀘스트 파람으로 정확히 매칭
			//@RequestParam(value="id", defaultValue="3") int id) 
		{
		
		RealEstate realestate = realEstateBO.getRealEstate(id);
		
		return realestate; //받은 객체를 그대로 리턴
	}

	
	public RealEstate realestate2(
			@RequestParam("id") int id,
			@RequestParam(value="rentPrice", required=false) int rentPrice,
			@RequestParam(value="area", required=false) int area,
			@RequestParam(value="price", required=false) int price
			
			) //어떤 파라미터로 매칭할지? 리퀘스트 파람으로 정확히 매칭
			//@RequestParam(value="id", defaultValue="3") int id) 
		{
		
		RealEstate realestate = realEstateBO.getRealEstate(rentPrice);
		
		return realestate; //받은 객체를 그대로 리턴
	}
	
	
	
	
	
}
