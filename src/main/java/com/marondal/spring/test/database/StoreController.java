package com.marondal.spring.test.database;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.marondal.spring.test.database.bo.StoreBO;
import com.marondal.spring.test.database.model.Store;



@Controller//컨트롤러 라는 뜻 컨트롤러면 리퀘스트 전달받아서 리스폰스로 전달해준다. 
public class StoreController { 
	
	@Autowired
	private StoreBO storeBO;//스토어 비오 객체 활용
	
	@RequestMapping("/database/test01")//urlmapping 컨트롤러는 무조건 bo를 통해서 기능 수행 
	@ResponseBody //이거 붙여주고 해당하는 바디 형태 그대로 리턴
	public List<Store> storeList() {//
		
		List<Store> storeList = storeBO.getStoreList();//
	
		return storeList;
	}

}
