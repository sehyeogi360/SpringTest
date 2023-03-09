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

	public int selectCountUrl(@Param("url") String url);//중복여부 세기

	public int deleteUrl(@Param("id") int id);
	
}
