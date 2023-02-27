package com.marondal.spring.test.mybatis;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.marondal.spring.test.mybatis.bo.RealEstateBO;
import com.marondal.spring.test.mybatis.model.RealEstate;


@Controller
@RequestMapping("/mybatis")//공통요소
public class RealEstateController {
	
	@Autowired
	private RealEstateBO realEstateBO; //비오객체가 있어야 전달하므로
	
	//전달 받은 id 와 일치하는 데이터 json으로 response 추가
	@RequestMapping("/test01/1")
	@ResponseBody
	public RealEstate realestate(
			@RequestParam("id") int id
			
			) //어떤 파라미터로 매칭할지? 리퀘스트 파람으로 정확히 매칭
			//@RequestParam(value="id", defaultValue="3") int id) 
		{
		
		RealEstate realestate = realEstateBO.getRealEstate(id);
		
		return realestate; //받은 객체를 그대로 리턴
	}
	// 전달받은 월세 금액보다 낮은 매물 정보를 json으로 response 담기
	@RequestMapping("/test01/2")
	@ResponseBody//리스폰스 바디 넣고 해당 리턴값 리턴
	public List<RealEstate> realEstateByRentPrice(
			@RequestParam("rent") int rentPrice//리퀘스트 파라미터 전달받기 꼭변수랑 같을필요없다 다르게 해도됨
			
			) //400error이시 파라미터 점검
			
		{
		
		List<RealEstate> realEstateList = realEstateBO.getRealEstateListByRentPrice(rentPrice);
		
		return realEstateList; //받은 객체를 그대로 리턴
	}
	//가격과 면적을 전달 받고, 조건에 맞는 정보 json으로 response에 담는다
	@RequestMapping("/test01/3")
	@ResponseBody
	public List<RealEstate> realEstateByAreaPrice(
			@RequestParam("area") int area,
			@RequestParam("price") int price
			) 
	
	{
		
		List<RealEstate> realEstate = realEstateBO.getRealEstateListByAreaPrice(area, price);
		
		return realEstate; //받은 객체를 그대로 리턴
	}
	

	@RequestMapping("/test02/1")
	@ResponseBody
	public String addRealEstateByObject() {//리턴 결과는 문자열
		
		RealEstate realestate = new RealEstate();//객체 생성
		
		realestate.setRealtorId(3);//세터로 값 채우기
		realestate.setAddress("푸르지용 리버 303동 1104호");
		realestate.setArea(89);
		realestate.setType("매매");
		realestate.setPrice(100000);
		
		int count = realEstateBO.addRealEstateByObject(realestate);
		return "실행결과 : " + count;
		
	}
	//새로운 페이지로 하나 만들기 realtorId 는 parameter를 통해서 전달받아서 저장하세요.
	
	@RequestMapping("/test02/2")
	@ResponseBody
	public String addRealEstate(@RequestParam("realtorId") int realtorId) {
		int count = realEstateBO.addRealEstate(realtorId, "썅떼빌리버 오피스텔 814호", 45, "월세", 100000, 120);	
	
		return "삽입결과 : " + count;
	}//실행된 행의 개수
	
	// id가 24 인 행의 type 을 전세로 바꾸고 price 를 70000으로 변경하세요.
	// 수정 성공한 행의 수를 출력하세요.
	@RequestMapping("/test03")
	@ResponseBody// return 타입은 천천히 생각하기 , id가 22인거?
	public String modifyRealEstate() {
		
		int count = realEstateBO.modifyRealEstate(22, "전세", 70000);//@RequestParam("id") int id파라미터 없이 그냥 여기다가 값쓰면된다 함.
		
		return "수정 성공 : " + count;
		
	}
	
	@RequestMapping("/test04")//url겹치면 서버가 안켜짐
	@ResponseBody
	public String deleteRealEstate(@RequestParam("id") int id) {//실수로 이거 안한듯;;
		int count = realEstateBO.deleteRealEstate(id);//삭제된 행의갯수리턴
		
		return "삭제 결과 : " + count; //기능수행은 비오
		
	}

	
	
	
	
	

	
	
	
	
}
