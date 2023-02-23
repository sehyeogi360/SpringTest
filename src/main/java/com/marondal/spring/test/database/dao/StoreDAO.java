package com.marondal.spring.test.database.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.marondal.spring.test.database.model.Store;

@Repository
public interface StoreDAO {//다오는 클래스가 아니라 인터페이스

	public List<Store>selectStoreList();//스토어 테이블 모두 조회 파라미터 x 한행의 정보가 여러개 저장 <> 클래스 형태로 저장

}
