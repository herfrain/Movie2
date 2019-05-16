//package com.bean.test;
//
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.ExceptionHandler;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import com.bean.model.UserBean;
//import com.bean.service.TestUserService;
//
//@Controller
//@RequestMapping("/testLogin")
//public class TestLogin {
//	@Autowired
//	private TestUserService testUserService;
//	
//	@RequestMapping(value={"test1"})
//	public String test1() throws Exception{
////		for(int i=0;i<1000;i++)
//		System.out.println("test1");
//		
//		boolean b=true;
//		if(b){
////			throw new RuntimeException("自定义异常");
////			throw new Exception("自定义异常");
//		}
//		return "ok";
//	}
//	
//	@RequestMapping(value={"login"})
//	public String login(UserBean user) throws Exception{
//		System.out.println("login");
//		return "login"; 
//	}
//	
//	@RequestMapping(value={"register"})
//	public String register(UserBean user) throws Exception{
//		if(!testUserService.getUserByUsername(user.getUsername()).isEmpty()) {
//			System.out.println("用户名已存在");
//			return "err";
//		}
//		testUserService.addUser(user);
//		return "redirect:login.do"; 
//	}
//	
//	/**
//	 * 处理小范围异常问题，类中的异常
//	 * 原理：当发生异常时，会先调用@ExceptionHandler
//	 */
//	
//	//每个类中写一个异常处理方法（也可以写父类
//	@ExceptionHandler(RuntimeException.class)
//	public String doException(RuntimeException exception){
//		System.out.println("Runtime异常");
//		System.out.println(exception.getMessage());
//		
//		return "err";
//	}
//
//	public void setUserService(TestUserService testUserService) {
//		this.testUserService = testUserService;
//	}
//	
//}
