package com.marondal.spring.test.ajax.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.marondal.spring.test.ajax.dao.FavoriteDAO;
import com.marondal.spring.test.ajax.model.Favorite;

@Service
public class FavoriteBO {
	
	@Autowired
	private FavoriteDAO favoriteDAO;
	
	public List<Favorite> favoriteList(){
		
		List<Favorite> favoriteList = favoriteDAO.selectFavoriteList();
		
		return favoriteList;
		
	}
	
	public int inputFavorite(
			  String name
			, String url) {
		
		return favoriteDAO.insertFavorite(name, url);
		
	}
	
}
