package com.bean.service;


import com.bean.model.Comment;

//接口
public interface CommentService {
	
	public int insert(Comment comment);
	public int deleteByPrimaryKey(String commentid);
	public int updateByPrimaryKey(Comment comment);
	public Comment selectByPrimaryKey(String commentid);
}
