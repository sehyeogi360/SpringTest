package com.marondal.spring.test.database.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.marondal.spring.test.database.model.Store;

@Repository
public interface StoreDAO {

	public List<Store>selectStoreList();
}
