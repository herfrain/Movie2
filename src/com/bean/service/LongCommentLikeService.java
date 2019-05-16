package com.bean.service;

import com.bean.model.LongCommentLike;

//接口
public interface LongCommentLikeService {
	
	public int insert(LongCommentLike longCommentLike);
	public int deleteByPrimaryKey(String longcommentlikeid);
	public int updateByPrimaryKey(LongCommentLike longCommentLike);
	public LongCommentLike selectByPrimaryKey(String longcommentlikeid);
}
