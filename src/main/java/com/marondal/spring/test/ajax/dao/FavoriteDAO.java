package com.marondal.spring.test.ajax.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.marondal.spring.test.ajax.model.Favorite;

@Repository
public interface FavoriteDAO {

	public List<Favorite> selectFavoriteList();//이테이블내 모든 데이터 조회
	
	public int insertFavorite(
			  @Param("name") String name
			, @Param("url") String url
			);
	//전달받은값이 일치하는 갯수 확인 0이면 중복되지않는다 그외엔 중복된다.
	public int selectCountUrl(@Param("url") String url);//전달받을 값은 확인할 url 갯수를 return 그래서 int type

	public int deleteUrl(@Param("id") int id);
	
}
