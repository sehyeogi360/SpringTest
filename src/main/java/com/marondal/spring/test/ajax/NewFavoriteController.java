package com.marondal.spring.test.ajax;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.marondal.spring.test.ajax.bo.FavoriteBO;
import com.marondal.spring.test.ajax.model.Favorite;

@Controller
@RequestMapping("/ajax/favorite")
public class NewFavoriteController {
	
	@Autowired
	private FavoriteBO  favoriteBO;
	
	
	@GetMapping("/list")
	public String favoriteList(Model model) {
		
		List<Favorite> favoriteList = favoriteBO.favoriteList();
		
		model.addAttribute("favoriteList", favoriteList);
		
		return "ajax/favorite/list";
		
	}
	
	@GetMapping("/input")
	
	public String inputFavorite(Model model) {
		
		return "ajax/favorite/input";
		
		
	}
	
	@GetMapping("/add")
	public String addFavorite(
			@RequestParam("name")String name
			, @RequestParam("url")String url
			
			) {
		
		int count = favoriteBO.inputFavorite(name, url);
		
		return "redirect:/ajax/list";
		
	}
	
	
	
}
