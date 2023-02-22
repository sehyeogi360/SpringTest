package com.marondal.spring.test.lifecycle;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Test03Controller {

	@RequestMapping("/lifecycle/test03")//url mapping
	public String jspResponse() {//메소드 이름은 알아서 지정
		return "lifecycle/test03";//경로 지정
	}
	
}
