package com.marondal.spring.test.database.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.marondal.spring.test.database.model.Store;

@Service
public class StoreBO {

	@Autowired
	private StoreBO storeBO;
	
	public List<Store> getStoreList() {
		List<Store> getStoreList = storeBO.getStoreList();
		return getStoreList;
			
		}


}
