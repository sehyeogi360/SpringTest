package com.marondal.spring.test.lifecycle;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/lifecycle/test01")//공통되는 부분 맵핑
public class Test01Controller {//프로젝트 화려한것 보다 원리를 중요시 하기

	@RequestMapping("/1")
	@ResponseBody
	public String stringResponse() { // 메소드 이름은 중요한게 아님 그냥 지어주면 됨
		return "<h2>test01 담은 Response</h2>";		
	}
	
	
	@RequestMapping("/2")
	@ResponseBody //json 형태	
	public Map<String, Object> mapResponse() {// 이맵을 만들어서 리스폰스만 해주기.
		Map<String, Object> scoreMap = new HashMap<>();
		
		scoreMap.put("국어", 80);
		scoreMap.put("수학", 95);
		scoreMap.put("영어", 85);
	
			// 형변환
	return scoreMap;
	
	}
}
