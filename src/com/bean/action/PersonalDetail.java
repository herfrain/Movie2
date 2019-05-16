package com.bean.action;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bean.model.User;
import com.bean.service.UserService;
import com.bean.serviceImpl.UserServiceImpl;


/**
 * 个人信息页面
 * 功能：
 * 1.显示个人信息（账号、邮箱等
 * 额外：
 * 1.可编辑修改账号信息
 * @author hefeng
 *
 */

@Controller
@RequestMapping("/personalDetail")
public class PersonalDetail {
	@Autowired
	private UserService userService;
	@Autowired
	private UserServiceImpl userServiceImpl;
	
	@RequestMapping("")
	public String showDetail(HttpSession session,Model model) {
		String username=null;
		//如果session里面有username，即已登陆过
		if(session.getAttribute("username")!=null)
			username=session.getAttribute("username").toString();
		
		System.out.println("personalDetail:"+username);
		
		if(username!=null) {
			User user=userServiceImpl.getUserByUserName(username);
			model.addAttribute(user);//用Model传值到页面 ${user}
		}
		
		return "personalInfo";
	}
	
	//修改密码
	@RequestMapping("changePassword")
	@ResponseBody
	public String changePassword(String oldPwd,String newPwd,String confirmPwd,HttpSession session) {
//		System.out.println(oldPwd+","+newPwd+","+confirmPwd);
		if(session.getAttribute("userid")==null) {
			return "login";
		}
		if(!newPwd.equals(confirmPwd)) {
			return "false";
		}
		String userid=session.getAttribute("userid").toString();
		User user=userServiceImpl.selectByPrimaryKey(userid);
//		System.out.println(user.toString());
		if(user.getUserpassword().equals(oldPwd)) {
			user.setUserpassword(newPwd);
			userServiceImpl.updateByPrimaryKey(user);
			return "true";
		}
		return "error";
	}
	
	//修改个人简介
	@RequestMapping("changeInfo")
	@ResponseBody
	public String changeInfo(String info,HttpSession session) {
		if(session.getAttribute("userid")==null) {
			return "login";
		}
		String userid=session.getAttribute("userid").toString();
		User user=userServiceImpl.selectByPrimaryKey(userid);
		user.setUserinfo(info);
		System.out.println(user.toString());
		userServiceImpl.updateByPrimaryKey(user);
		return "true";
	}
}
