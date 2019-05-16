package com.bean.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.dao.LongCommentMapper;
import com.bean.model.LongComment;
import com.bean.service.LongCommentService;

@Service
public class LongCommentServiceImpl implements LongCommentService{
	@Autowired
	private LongCommentMapper collectionsDao;

	@Override
	public int insert(LongComment record) {
		// TODO Auto-generated method stub
		return this.collectionsDao.insert(record);
	}
	
	@Override
	public int deleteByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return this.collectionsDao.deleteByPrimaryKey(id);
	}
	
	@Override
	public int updateByPrimaryKey(LongComment record) {
		// TODO Auto-generated method stub
		return this.collectionsDao.updateByPrimaryKey(record);
	}

	@Override
	public LongComment selectByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return this.collectionsDao.selectByPrimaryKey(id);
	}
	
	
	public int updateByPrimaryKeySelective(LongComment record) {
		return this.collectionsDao.updateByPrimaryKeySelective(record);
	}


}
