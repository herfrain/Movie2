package com.bean.action;

import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bean.model.User;
import com.bean.service.UserService;
import com.bean.serviceImpl.UserServiceImpl;
import com.util.MyDate;

/**
 * 注册
 * 功能：
 * 1.格式检查
 * 2.检查账号是否存在，邮箱是否存在
 * 3.实现注册，直接登录，并跳转到首页
 * @author hefeng
 *
 */
@Controller
@RequestMapping("/register")
public class Register {
	@Autowired
	private UserService userService;
	@Autowired
	private UserServiceImpl userServiceImpl;
	
	@RequestMapping("")
	public String register(User user,HttpSession session) {
		System.out.println("register:"+user.toString());
		
		if(checkUserName(user.getUsername())) {
			user.setUserid(UUID.randomUUID().toString().replaceAll("-", ""));//设置uuid
			user.setUserdate(MyDate.getShortDate().toString());//设置注册时间
			userService.insert(user);//插入表
			session.setAttribute("username", user.getUsername());//将用户名放到session
			return "redirect:index.do";//注册成功，返回index页面
		}
		return "";
	}
	
	@RequestMapping("register2")
	@ResponseBody
	public String register2(HttpServletRequest request,HttpSession session) {
		String username=request.getParameter("username");
		String userpassword=request.getParameter("userpassword");
		System.out.println(username);
		User user=new User();
		user.setUsername(username);
		user.setUserpassword(userpassword);
		
		if(checkUserName(user.getUsername())) {
			user.setUserid(UUID.randomUUID().toString().replaceAll("-", ""));//设置uuid
			user.setUserdate(MyDate.getShortDate().toString());//设置注册时间
			userService.insert(user);//插入表
			session.setAttribute("username", user.getUsername());//将用户名放到session
			session.setAttribute("userid", user.getUserid());
			return "true";//注册成功，返回index页面
		}
		return "false";
	}
	
	//检查用户名是否重复
	public boolean checkUserName(String username) {
		//不能注册null
		if(username=="null") {
			return false;
		}
		if(userServiceImpl.getUserByUserName(username)==null) {
			return true;
		}else {
			return false;
		}
	}
}
