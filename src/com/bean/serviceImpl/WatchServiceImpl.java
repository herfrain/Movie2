package com.bean.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.dao.WatchMapper;
import com.bean.model.Watch;
import com.bean.service.WatchService;

@Service
public class WatchServiceImpl implements WatchService{
	@Autowired
	private WatchMapper collectionsDao;

	@Override
	public int insert(Watch record) {
		// TODO Auto-generated method stub
		return this.collectionsDao.insert(record);
	}
	
	@Override
	public int deleteByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return this.collectionsDao.deleteByPrimaryKey(id);
	}
	
	@Override
	public int updateByPrimaryKey(Watch record) {
		// TODO Auto-generated method stub
		return this.collectionsDao.updateByPrimaryKey(record);
	}

	@Override
	public Watch selectByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return this.collectionsDao.selectByPrimaryKey(id);
	}



}
