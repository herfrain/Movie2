package com.bean.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.dao.CommentLikeMapper;
import com.bean.model.CommentLike;
import com.bean.service.CommentLikeService;

@Service
public class CommentLikeServiceImpl implements CommentLikeService{
	@Autowired
	private CommentLikeMapper commentsLikeDao;

	@Override
	public int insert(CommentLike record) {
		// TODO Auto-generated method stub
		return this.commentsLikeDao.insert(record);
	}
	
	@Override
	public int deleteByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return this.commentsLikeDao.deleteByPrimaryKey(id);
	}
	
	@Override
	public int updateByPrimaryKey(CommentLike record) {
		// TODO Auto-generated method stub
		return this.commentsLikeDao.updateByPrimaryKey(record);
	}

	@Override
	public CommentLike selectByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return this.commentsLikeDao.selectByPrimaryKey(id);
	}



}
