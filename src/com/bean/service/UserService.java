package com.bean.service;

import java.util.List;

import com.bean.model.User;

//接口
public interface UserService {
	
	public int insert(User user);
	public int deleteByPrimaryKey(String userid);
	public int updateByPrimaryKey(User user);
	public User selectByPrimaryKey(String userid);
	
	//Test
	public List<User> getUserList();
}
