package com.bean.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.dao.UserMapper;
import com.bean.model.User;
import com.bean.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserMapper userDao;

	@Override
	public int insert(User record) {
		// TODO Auto-generated method stub
		return this.userDao.insert(record);
	}
	
	@Override
	public int deleteByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return this.userDao.deleteByPrimaryKey(id);
	}
	
	@Override
	public int updateByPrimaryKey(User record) {
		// TODO Auto-generated method stub
		return this.userDao.updateByPrimaryKey(record);
	}

	@Override
	public User selectByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return this.userDao.selectByPrimaryKey(id);
	}

	@Override
	public List<User> getUserList() {
		// TODO Auto-generated method stub
		return this.userDao.getUserList();
	}

	
	public User getUserByUserName(String username) {
		return this.userDao.getUserByUserName(username);
	}

}
