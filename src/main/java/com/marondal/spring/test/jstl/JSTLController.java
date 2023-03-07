package com.marondal.spring.test.jstl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.marondal.spring.test.jsp.model.Seller;
import com.marondal.spring.test.jstl.bo.WeatherHistoryBO;
import com.marondal.spring.test.jstl.model.Member;
import com.marondal.spring.test.jstl.model.WeatherHistory;

@Controller
@RequestMapping("/jstl")
public class JSTLController {
	
	
	@GetMapping("/test01")
	public String test01() {
		
		return "jstl/test01";
	}

	@GetMapping("/test02")
	public String test02(Model model) {//해당 컨트롤러 안에 list두고 모델에 값들을 저장
		
		List<String> musicRanking = new ArrayList<>();
		musicRanking.add("강남스타일");
		musicRanking.add("벚꽃엔딩");
		musicRanking.add("좋은날");
		musicRanking.add("거짓말");
		musicRanking.add("보고싶다");
		
		model.addAttribute("musicRanking", musicRanking);// 키워드 , 객체
		return "jstl/test02";
	}
	
	
	@GetMapping("/test02/1")
	public String test02_1(Model model) {
		
		List<Map<String, Object>> membership = new ArrayList<>();

		Map<String, Object> member = new HashMap<>();
		member.put("name", "손오공");
		member.put("phoneNumber", "010-1234-5678");
		member.put("grade", "VIP");
		member.put("point", 12040);
		membership.add(member);

		member = new HashMap<>();
		member.put("name", "저팔계");
		member.put("phoneNumber", "010-4321-1234");
		member.put("grade", "BASIC");
		member.put("point", 3420);
		membership.add(member);

		member = new HashMap<>();
		member.put("name", "사오정");
		member.put("phoneNumber", "010-8888-1111");
		member.put("grade", "GOLD");
		member.put("point", 1530);
		membership.add(member);

		member = new HashMap<>();
		member.put("name", "삼장");
		member.put("phoneNumber", "010-0000-1234");
		member.put("grade", "GOLD");
		member.put("point", 8450);
		membership.add(member);

		member = new HashMap<>();
		member.put("name", "우마왕");
		member.put("phoneNumber", "010-1111-2222");
		member.put("grade", "BASIC");
		member.put("point", 420);
		membership.add(member);
							//memberList 로 해도됨 굳이 같지 않아도 된다는거
		model.addAttribute("memberList", membership);//멤버가 아닌 모든 멤버정보가 들어간 리스트, 멤버쉽이 들어가는것.
		
		return "jstl/test02_1";
	}
	
		@GetMapping("/test03") 
		public String test03(Model model) {
			List<Integer> candidates = new ArrayList<>();
			candidates.add(263001);
			candidates.add(173942); 
			candidates.add(563057); 
			
			model.addAttribute("candidateList", candidates);
			
			List<Map<String, Object>> cardBills = new ArrayList<>();

			Map<String, Object> cardBill = new HashMap<>();
			cardBill.put("store", "GS48");
			cardBill.put("pay", 7800);
			cardBill.put("date", "2025-09-14");
			cardBill.put("installment", "일시불");
			cardBills.add(cardBill);

			cardBill = new HashMap<>();
			cardBill.put("store", "현태백화점");
			cardBill.put("pay", 2750000);
			cardBill.put("date", "2025-09-18");
			cardBill.put("installment", "3개월");
			cardBills.add(cardBill);

			cardBill = new HashMap<>();
			cardBill.put("store", "요촌치킨");
			cardBill.put("pay", 180000);
			cardBill.put("date", "2025-09-20");
			cardBill.put("installment", "일시불");
			cardBills.add(cardBill);			
			
			model.addAttribute("cardBillList", cardBills);
			
			return "jstl/test03";
		}
		
		@GetMapping("/test04")	
		public String test04(Model model) { // 모델이라는 객체 추
			
			
			List<Member> members = new ArrayList<>();

			Member member = new Member();//멤버 임포트 유의하고 굳이 생성자는 필요없다고 함
			
			member.setName("유비");//setter필요
			member.setPhoneNumber("010-1234-5678");
			member.setEmail("youbee@gmail.com");
			member.setNationality("삼국시대 촉한");
			member.setIntroduce("저는 촉의 군주 유비입니다. 삼국통일을 위해 열심히 일하겠습니다.");
			members.add(member);

			member = new Member();
			member.setName("관우");
			member.setPhoneNumber("010-1234-5678");
			member.setEmail("woo@naver.com");
			member.setNationality("삼국시대 촉한");
			member.setIntroduce("관우에요. 저는 유비형님 보다 나이는 많지만 일단 아우입니다.");
			members.add(member);

			member = new Member();
			member.setName("장비");
			member.setPhoneNumber("02-111-3333");
			member.setNationality("삼국시대 촉한");
			member.setEmail("tools@gmail.com");
			member.setIntroduce("장비라우");
			members.add(member);

			member = new Member();
			member.setName("조조");
			member.setPhoneNumber("010-0987-4321");
			member.setNationality("삼국시대 위");
			member.setEmail("jojo@gmail.com");
			member.setIntroduce("이름은 조조 자는 맹덕이라 하오");
			members.add(member);

			member = new Member();
			member.setName("주유");
			member.setPhoneNumber("010-0000-1111");
			member.setNationality("삼국시대 오");
			member.setEmail("jooyou@kakao.com");
			member.setIntroduce("주유는 주유소에서 ㅋㅋ");
			members.add(member);

			member = new Member();
			member.setName("황충");
			member.setPhoneNumber("031-432-0000");
			member.setNationality("삼국시대 촉한");
			member.setEmail("yellowbug@naver.com");
			member.setIntroduce("내 수염 좀 멋있는 듯");
			members.add(member);
			
			model.addAttribute("memberList", members);
			
			return "jstl/test04";	
	}
		
		//weatherController 따로만들어보기
		@GetMapping("/test05") //select			
		public String test05(Model model) {
			
			//개별적으로 컨트롤러 만들필요없이 여기서 작업
			//bo 호출하기 
			//조회해 오기
			List<WeatherHistory> weatherhistory = weatherHistoryBO.getWeatherhistory(); ;
			//위에거랑 무슨차이냐? 주어진 데이터냐 내가 조회한 데이터냐 그차이 
			model.addAttribute("weatherhistoryList", weatherhistory);
			
			
			
			return "jstl/test05";
		}
		
		
		@Autowired
		private WeatherHistoryBO weatherHistoryBO;
		
		@GetMapping("/add")//전달이 안될만큼 많지도 않아서 겟
		@ResponseBody//무엇을리턴할지에 따라 붙이고 말고 함 있는거는 데이터 자체 리턴 없는거는 경로리턴
		public String addWeatherHistoryByObject(
				//@DateTimeFormat(pattern="yyyy년 MM월 dd일") 이라는 거 활용 마치 parseDate와유사
//				@RequestParam("date") Date date
//				, @RequestParam("weather") String weather
//				, @RequestParam("temperatures") double temperatures //파라미터와 변수가 굳이 같을 이유는 없다.
//				, @RequestParam("preciptation") double preciptation
//				, @RequestParam("microDust") String microDust
//				, @RequestParam("windSpeed") double windSpeed
				@ModelAttribute WeatherHistory weatherhistory
				, Model model) {
			
			int count = weatherHistoryBO.addWeatherHistoryByObject(weatherhistory);
			
			model.addAttribute("WeatherHistory", weatherhistory);
			
			return "삽입결과 : " + count;
		}
		
		
		
		@GetMapping("/test05_input") //날짜 입력폼으로
		
		public String test05_input(Model model) {
			
			return "jstl/test05_input";
			
		}
		
}
