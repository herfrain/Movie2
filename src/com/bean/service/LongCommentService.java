package com.bean.service;

import com.bean.model.LongComment;

//接口
public interface LongCommentService {
	
	public int insert(LongComment longComment);
	public int deleteByPrimaryKey(String longcommentid);
	public int updateByPrimaryKey(LongComment longComment);
	public LongComment selectByPrimaryKey(String longcommentid);
}
