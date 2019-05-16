package com.bean.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.dao.UserLongcommentMapper;
import com.bean.model.UserLongcomment;
import com.bean.service.UserLongCommentService;

@Service
public class UserLongCommentServiceImpl implements UserLongCommentService{
	@Autowired
	UserLongcommentMapper userLongcommentMapper;
	
	//通过movieid获取用户&影评表数据列表
	public List<UserLongcomment> getListByMovieId(String movieid){
		return this.userLongcommentMapper.getListByMovieId(movieid);
	}
	
	//通过longcommentid获得model
	public UserLongcomment getModelByLongCommentId(String longcommentid){
		return this.userLongcommentMapper.getModelByLongCommentId(longcommentid);
	}
	
	//获得5个随机的推荐长评
	public List<UserLongcomment> getRandomList(){
		return this.userLongcommentMapper.getRandomList();
	}
}
