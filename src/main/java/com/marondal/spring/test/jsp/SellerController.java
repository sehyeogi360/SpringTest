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
@RequestMapping("/jsp/test01")//공통 매핑
public class SellerController {

	@Autowired
	private SellerBO sellerBO; //비오 객체 

	@PostMapping("/add_seller")//삽입한다 포스트 매핑
	@ResponseBody //우선 애드샐러부터 추가한다. 파라미터 추가 부터 바로 담길수 있게 리스폰스까지 추가
	public String addSeller(
			@RequestParam("nickname") String nickname, 
			@RequestParam("temperature") double temperature,
			@RequestParam("profileImage") String profileImage) {

		int count = sellerBO.addSeller(nickname, temperature, profileImage);//실행횟수까지 전달받기

		return "삽입결과 : " + count;
	}

	
	//입력 form
	@GetMapping("/1")//입력창 (url 매핑은 사용자가 이용하는 주소)
	public String sellerInput() {
		
		return "/jsp/test01";//jsp 경로 리턴 (리스폰스에 담을 jsp 주소)
	}
	
	
	//2번까지만 해봐도 무난
	
	@GetMapping("/seller_info")         //requestparam 했을때 숨겨진 조건들 400error 안뜨게 할려면 false로 지정하기 500 뜨니 Integer로 바꾸기 객체로 관리
	public String lastSeller(@RequestParam(value = "id", required=false) Integer id, Model model) {//매개체 : 모델 컨트롤러 메소드에 추가해준다. id추가하기
		
		Seller seller = null;//이렇게 조건문 밖에다가 차리.
		// id 파라미터가 있으면 id로 조회한 결과 보여주기
		if(id != null) {
			seller = sellerBO.getSeller(id);			
			
		} else {// id 파라미터가 없으면 최근 판매자 결과 보여주기 -> if문 활용 400error는 여기까지도 못들어온거 
			seller = sellerBO.getLastSeller();//셀러비오를 통해 얻어온다.  최근에 추가 내역 조회			
			 // 두가지 인자 키 값, lastSeller 객체
		}
		model.addAttribute("seller", seller);//공통된 요소이므로 밖에.
		
		
		return "jsp/lastseller";//경로리턴

	}

}
