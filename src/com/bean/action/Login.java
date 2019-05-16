package com.bean.action;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bean.model.User;
import com.bean.service.UserService;
import com.bean.serviceImpl.UserServiceImpl;

/**
 * 登陆页面
 * 功能：
 * 1.实现登陆功能
 * 2.检查格式
 * 3.验证账号与密码
 * 3.登陆成功跳转到首页，并在head显示用户名称
 * 4.用户名称可以链接到个人信息页面
 * @author hefeng
 *
 */
@Controller
@RequestMapping("/login")
public class Login {
	@Autowired
	private UserService userService;
	@Autowired
	private UserServiceImpl userServiceImpl;
	
	@RequestMapping("") //在使用 @RequestMapping后，返回值通常解析为跳转路径
//	@ResponseBody //默认是请求页面，加上这个注解可以返回数据
	
	public String login(User user,HttpSession session) {
		System.out.println("login:"+user.toString());
		User dUser=userServiceImpl.getUserByUserName(user.getUsername());
		System.out.println("login:"+dUser.toString());
		if(dUser!=null&&dUser.getUserpassword().equals(user.getUserpassword())) {
			session.setAttribute("username", user.getUsername());
			return "redirect:index.do";
		}
		return "";
		
	}
	
	@RequestMapping("login2") //在使用 @RequestMapping后，返回值通常解析为跳转路径
	@ResponseBody //默认是请求页面，加上这个注解可以返回数据
	public String login2(HttpServletRequest request,HttpSession session) throws IOException {
		
		String username=request.getParameter("username");
		String userpassword=request.getParameter("userpassword");
		System.out.println(username);
		User user=new User();
		user.setUsername(username);
		user.setUserpassword(userpassword);
		User dUser=userServiceImpl.getUserByUserName(user.getUsername());
//		System.out.println("login:"+dUser.toString());
		if(dUser!=null&&dUser.getUserpassword().equals(user.getUserpassword())) {
			session.setAttribute("username", dUser.getUsername());
			session.setAttribute("userid", dUser.getUserid());
			return "true";
		}
		
		
		
		return "false";
	}
	
	@RequestMapping("logout")
	@ResponseBody
	public String logout(HttpSession session) {
		if(session.getAttribute("username")==null) {
			return "login";
		}
		session.removeAttribute("username");
		session.removeAttribute("userid");
		System.out.println("true");
		return "true";
	}
}
