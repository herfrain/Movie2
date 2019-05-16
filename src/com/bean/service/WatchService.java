package com.bean.service;

import com.bean.model.Watch;

//接口
public interface WatchService {
	
	public int insert(Watch watch);
	public int deleteByPrimaryKey(String watchid);
	public int updateByPrimaryKey(Watch watch);
	public Watch selectByPrimaryKey(String watchid);
}
