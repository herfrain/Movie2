package com.bean.test;

import org.junit.Test;

import com.util.MyContext;

public class TestContext {
	
	
	//读入txt文件，将换行替换为<span></span>
	@Test
	public void test1() {
		String string="diwjaoifhaw\ndjoawjd\r";
		System.out.println(MyContext.paraArticle(string));
	}
}
