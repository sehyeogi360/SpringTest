package com.marondal.spring.test.database.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.marondal.spring.test.database.dao.StoreDAO;
import com.marondal.spring.test.database.model.Store;

@Service
public class StoreBO { //bo서 해당기능 수행
	
	@Autowired//스프링 프레임워크에게 맡길 클래스 직접 객체생성을 하지않아도 됨
	private StoreDAO storeDAO;
	
	public List<Store> getStoreList() {
		List<Store> storeList = storeDAO.selectStoreList();
		
		return storeList;//리턴되는 형태 리스트
			
		}


}
