package com.marondal.spring.test.ajax.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.marondal.spring.test.ajax.dao.FavoriteDAO;
import com.marondal.spring.test.ajax.model.Favorite;

@Service
public class FavoriteBO {
	
	@Autowired
	private FavoriteDAO favoriteDAO;//비오에서 다오메소드 호출
	
	public List<Favorite> getFavoriteList(){//여러 행 이므로 리스트
		
		//List<Favorite> favoriteList = favoriteDAO.selectFavoriteList();
		
		return favoriteDAO.selectFavoriteList();//바로리턴해버리기
		
	}
	
	public int addFavorite(
			  String name
			, String url) {
		
		return favoriteDAO.insertFavorite(name, url);
		
	}
	
	public boolean isDuplicate(String url) {// url 전달받아서 중복여부를 알려주는 기능
		
		int count = favoriteDAO.selectCountUrl(url); 
//		if(count == 0) {
//			return false; //중복 되는게 없다.
//		} else {
//			return true;//중복되는게 있다.
//		}
		//위에걸 한줄로 요약 하면. 0이아닌게 true 0이맞으면 false? 굳이 헷갈리면 이걸 쓸필욘없다고 함.
		return count != 0;
	}	
	
		// 삭제하기
		
		public int deleteUrl(int id) {

			return favoriteDAO.deleteUrl(id);
	
		}
	
}
