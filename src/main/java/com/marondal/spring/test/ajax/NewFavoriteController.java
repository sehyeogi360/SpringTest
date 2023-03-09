package com.marondal.spring.test.ajax;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.marondal.spring.test.ajax.bo.FavoriteBO;
import com.marondal.spring.test.ajax.model.Favorite;

@Controller
@RequestMapping("/ajax/favorite")
public class NewFavoriteController {
	
	@Autowired
	private FavoriteBO favoriteBO;
	
	
	@GetMapping("/list")
	public String favoriteList(Model model) {//모델객체 컨트롤러서 필요할때 채우기
		//데이터 조회
		List<Favorite> favoriteList = favoriteBO.getFavoriteList();//리스트인데 제네릭 favorite 직접못하니 비오에서시킨것
		
		model.addAttribute("favoriteList", favoriteList);
		
		return "ajax/favorite/list";
		
	}
	
	@GetMapping("/input") 
	
	public String inputFavorite() {
		
		return "ajax/favorite/input";
		
		
	}
	
	// 사이트 이름과 주소를 전달 받고, 데이터를 저장
	// 성공 실패 여부를 response로 전달한다.
	@PostMapping("/add")//api insert를 수행하는 과정 : 브라우저에서 수행 api는 웹서버에서 동작 되는것 브라우저 요청 웹서버 response
	@ResponseBody
	public Map <String, String> addFavorite(// 리퀘스트를 어떻게 할지 리스폰스 규격을 어떻게할지 정해야 함. map으로변경하기 타입
			@RequestParam("name")String name
			, @RequestParam("url")String url
			
			) {
		
		int count = favoriteBO.addFavorite(name, url);//비오메소드 호출 실행되는 횟수 
		
		// 성공: {"result":"success"}
		// 실패: {"result":"fail"}
		//이거를 안함
		Map <String, String> resultMap = new HashMap<>();
		
		if(count == 1) {
			resultMap.put("result", "success");
		} else {
			resultMap.put("result", "fail");
		}
		
		
		return resultMap;
		
	}
	
	//중복 확인
	
	@GetMapping("/duplicate")
	@ResponseBody
	public Map <String, Boolean> isDuplicate(
			@RequestParam("url") String url ) {
		
		Map <String, Boolean> isDuplicateEmail = new HashMap<>();
		
		if(favoriteBO.isDuplicate(url)) {
			isDuplicateEmail.put("is_duplicate", true);
		}else {
			isDuplicateEmail.put("is_duplicate", false);
		}
		
			
		return isDuplicateEmail;	
		
	}
	
	// 삭제하기 insert하면 insert 한 결과가 잘됐는지 확인하듯이 마찬가지로 결과 확인 insert와 유사하게 만들어가면 될듯 
	@GetMapping("/delete")
	@ResponseBody
	public String delete(@RequestParam("id") int id) {//id가 기준이되야함
		
		
		return "";
	}
	
	
	
}
