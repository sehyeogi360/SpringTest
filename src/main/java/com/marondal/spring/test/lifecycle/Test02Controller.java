package com.marondal.spring.test.lifecycle;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.marondal.spring.test.lifecycle.model.Movie;

@RestController //일반 컨트롤러 + 리스폰스
@RequestMapping("/lifecycle/test02")
public class Test02Controller {

	
	
	@RequestMapping("/1")	//리스트 출력하기
	@ResponseBody
	public List<Map<String, Object>> mapResponse() {
		List<Map<String, Object>> movieList = new ArrayList<>(); //이맵들을 출력할 리스트 만듦
	//스트링은 html로 처리 그외는 json의 데이터로 처리 리스폰스는 문자열로 만든 결과물 
//		movieList.add(movieMap1);// 리스트에 맵들 추가하기?
//		movieList.add(movieMap2);// 리스트에 맵들 추가하기?
//		movieList.add(movieMap3);// 리스트에 맵들 추가하기?
//		movieList.add(movieMap4);// 리스트에 맵들 추가하기?
//		movieList.add(movieMap5);// 리스트에 맵들 추가하기?
		// 모든타입이 대응가능한 object
		Map<String, Object> movieMap1 = new HashMap<>(); //근데 이 맵들을 주르륵 나열해야한다는 뜻.
		movieMap1.put("rate", 15);
		movieMap1.put("direct", "봉준호");
		movieMap1.put("time", 131);
		movieMap1.put("title", "기생충");
		movieList.add(movieMap1);//알고보니 이렇게 하는거였다!
		
		Map<String, Object> movieMap2 = new HashMap<>(); //이것도 지역변수 식으로 movieMap이렇게 해도됨		
		movieMap2.put("rate", 0);
		movieMap2.put("direct", "로베르토 베니니");
		movieMap2.put("time", 116);
		movieMap2.put("title", "인생은 아름다워");
		movieList.add(movieMap2);
		
		
		Map<String, Object> movieMap3 = new HashMap<>();		
		movieMap3.put("rate", 12);
		movieMap3.put("direct", "로베르토 베니니");
		movieMap3.put("time", 147);
		movieMap3.put("title", "인셉션");
		movieList.add(movieMap3);
		
		
		Map<String, Object> movieMap4 = new HashMap<>();		
		movieMap4.put("rate", 19);
		movieMap4.put("direct", "윤종빈");
		movieMap4.put("time", 133);
		movieMap4.put("title", "범죄와의 전쟁");
		movieList.add(movieMap4);
		
		Map<String, Object> movieMap5 = new HashMap<>();		
		movieMap5.put("rate", 15);
		movieMap5.put("direct", "프란시스 로렌스");
		movieMap5.put("time", 137);
		movieMap5.put("title", "헝거게임");
		movieList.add(movieMap5);
		
		return movieList;//리스트를 리턴시켜야 함.
	}
	


	@RequestMapping("/2")	// . json 출력 (List, Class)
	public List<Movie> objectResponse() { //리턴타입
		
		List<Movie> movieList = new ArrayList<>();
		
		Movie movie = new Movie();//객체생성 안했으니 역시 기본생성자
		movie.setTitle("안녕하세요");
		movie.setUser("hagulu");
		movie.setContent("안녕하세요. 가입했어요.");//마찬가지로 순서 안중요함		
		movieList.add(movie);//add 
		
		movie = new Movie();
		movie.setTitle("헐 대박");
		movie.setUser("bada");
		movie.setContent("오늘 화요일이었어, 금요일인줄");//마찬가지로 순서 안중요함		
		movieList.add(movie);
		
		return movieList;//리턴 타입 
	}
	
	@RequestMapping("/3") //ResponseEntity
	public ResponseEntity<Movie> entityResponse(){ //객체 하나만 
		
		Movie movie = new Movie();
		movie.setTitle("제목");
		movie.setUser("임세혁");
		movie.setContent("소개인사");
		
		ResponseEntity<Movie> entity = new ResponseEntity(movie, HttpStatus.INTERNAL_SERVER_ERROR);//리스폰스 엔티티 라는 개체
		//리턴할 데이터는 엔티티다. 무비가 아니다.
		return entity;
		
		
	}
	
	
	
	
}
