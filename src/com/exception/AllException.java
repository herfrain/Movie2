package com.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class AllException {
	
	@ExceptionHandler(Exception.class)
	public String doException(Exception exception){
		System.out.println("发生错误");
		return "err";
	}
	
}
