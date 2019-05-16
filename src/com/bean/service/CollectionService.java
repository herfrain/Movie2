package com.bean.service;

import com.bean.model.Collections;

//接口
public interface CollectionService {
	
	public int insert(Collections collections);
	public int deleteByPrimaryKey(String collectionid);
	public int updateByPrimaryKey(Collections collections);
	public Collections selectByPrimaryKey(String collectionid);
}
