package com.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class MyDate {
	
	//获取当前时间，格式为 yyyy-MM-dd
	public static Date getShortDate() {
		Date sqlDate = new java.sql.Date(new Date().getTime());  
	    return sqlDate;  
	}
	
	//获取当前时间，格式为 yyyy-MM-dd HH:mm:ss
	public static String getLongDate() {  
	    Date currentTime = new Date();  
	    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
	    String dateString = formatter.format(currentTime);  
	    return dateString;  
	}  
}
