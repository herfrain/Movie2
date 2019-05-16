package com.filter;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;


@Component //过滤器注解
public class TestInterceptor implements HandlerInterceptor{
	//高并发，不能这样写，因为同时多用户访问，唯一的变量会改变
//	long start;//开始时间
//	long end;//结束时间
	
	//专门写一个过滤器，用来检查session中是否有用户存在
	//如果没有直接return false同时，要求重定向到login.jsp
	
	/**
	 * 1.session检查
	 * 	a.登陆的时候，向session放置
	 * 	b.过滤器中检查
	 * 2.权限检查
	 * 	a.在登陆的时候，读取用户权限生成map或其他对象储存到seesion中
	 * 	b.每次发送.do的请求的时候，拦截器检查，用户是否有访问这个资源的权限
	 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		return true; //true 不拦截
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
	}
	
	
}
