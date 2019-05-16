package com.bean.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.dao.MovieLikeMapper;
import com.bean.model.MovieLike;
import com.bean.service.MovieLikeService;

@Service
public class MovieLikeServiceImpl implements MovieLikeService{
	@Autowired
	private MovieLikeMapper collectionsDao;

	@Override
	public int insert(MovieLike record) {
		// TODO Auto-generated method stub
		return this.collectionsDao.insert(record);
	}
	
	@Override
	public int deleteByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return this.collectionsDao.deleteByPrimaryKey(id);
	}
	
	@Override
	public int updateByPrimaryKey(MovieLike record) {
		// TODO Auto-generated method stub
		return this.collectionsDao.updateByPrimaryKey(record);
	}

	@Override
	public MovieLike selectByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return this.collectionsDao.selectByPrimaryKey(id);
	}



}
