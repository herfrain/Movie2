package com.bean.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.dao.LongCommentLikeMapper;
import com.bean.model.LongCommentLike;
import com.bean.service.LongCommentLikeService;

@Service
public class LongCommentLikeServiceImpl implements LongCommentLikeService{
	@Autowired
	private LongCommentLikeMapper longCommentLikeMapper;

	@Override
	public int insert(LongCommentLike record) {
		// TODO Auto-generated method stub
		return this.longCommentLikeMapper.insert(record);
	}
	
	@Override
	public int deleteByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return this.longCommentLikeMapper.deleteByPrimaryKey(id);
	}
	
	@Override
	public int updateByPrimaryKey(LongCommentLike record) {
		// TODO Auto-generated method stub
		return this.longCommentLikeMapper.updateByPrimaryKey(record);
	}

	@Override
	public LongCommentLike selectByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return this.longCommentLikeMapper.selectByPrimaryKey(id);
	}


	public LongCommentLike exist(String longcommentsid,String userid) {
		return this.longCommentLikeMapper.exist(longcommentsid, userid);
	}
	
	//获取点赞数
    public int getLikeNum(String longcommentid) {
    	return this.longCommentLikeMapper.getLikeNum(longcommentid);
    }
}
