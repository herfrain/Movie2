package com.util;

public class MyContext {
	
	//将txt文本中的换行符转换为html中的<br/>
	public static String paraArticle(String article) {
		if(article==null) {
			return "";
		}
		article=article.replaceAll("\n", "<br/>");
		article=article.replaceAll("\r", "<br/>");
		return article;
	}
}
