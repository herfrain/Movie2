package com.bean.service;

import com.bean.model.CommentLike;

//接口
public interface CommentLikeService {
	
	public int insert(CommentLike commentLike);
	public int deleteByPrimaryKey(String commentlikeid);
	public int updateByPrimaryKey(CommentLike commentLike);
	public CommentLike selectByPrimaryKey(String commentlikeid);
}
