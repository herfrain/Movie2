package com.bean.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.bean.dao.CommentMapper;
import com.bean.model.Comment;
import com.bean.service.CommentService;

@Service
public class CommentServiceImpl implements CommentService{
	@Autowired
	private CommentMapper collectionsDao;

	@Override
	public int insert(Comment record) {
		// TODO Auto-generated method stub
		return this.collectionsDao.insert(record);
	}
	
	@Override
	public int deleteByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return this.collectionsDao.deleteByPrimaryKey(id);
	}
	
	@Override
	public int updateByPrimaryKey(Comment record) {
		// TODO Auto-generated method stub
		return this.collectionsDao.updateByPrimaryKey(record);
	}

	@Override
	public Comment selectByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return this.collectionsDao.selectByPrimaryKey(id);
	}



}
