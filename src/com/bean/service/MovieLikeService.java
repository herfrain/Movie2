package com.bean.service;

import com.bean.model.MovieLike;

//接口
public interface MovieLikeService {
	
	public int insert(MovieLike movieLike);
	public int deleteByPrimaryKey(String movielikeid);
	public int updateByPrimaryKey(MovieLike movieLike);
	public MovieLike selectByPrimaryKey(String movielikeid);
}
