package com.bean.test;

import org.junit.jupiter.api.Test;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/testEachHtml")
public class TestEachHtml {
	
	
	@RequestMapping(value={"comedy"})
	public String test1() throws Exception{
		
		return "comedy";
	}
	
	@RequestMapping(value={"contact"})
	public String test2() throws Exception{
		
		return "contact";
	}
	
	@RequestMapping(value={"faq"})
	public String test3() throws Exception{
		
		return "faq";
	}
	
	@RequestMapping(value={"genres"})
	public String test4() throws Exception{
		
		return "sort";
	}
	
	@RequestMapping(value={"horror"})
	public String test5() throws Exception{
		
		return "horror";
	}
	
	@RequestMapping(value={"icons"})
	public String test6() throws Exception{
		
		return "icons";
	}
	
	@RequestMapping(value={"index"})
	public String test7() throws Exception{
		
		return "index";
	}
	
	@RequestMapping(value={"list"})
	public String test8() throws Exception{
		
		return "rank";
	}
	
	
	@RequestMapping(value={"news-single"})
	public String test9() throws Exception{
		
		return "longCommentDetail";
	}
	
	@RequestMapping(value={"news"})
	public String test10() throws Exception{
		
		return "longComment";
	}
	
	@RequestMapping(value={"series"})
	public String test11() throws Exception{
		
		return "series";
	}
	
	@RequestMapping(value={"short-codes"})
	public String test12() throws Exception{
		
		return "short-codes";
	}
	
	@RequestMapping(value={"single"})
	public String test13() throws Exception{
		
		return "movieDetail";
	}
	
	@RequestMapping(value={"ok"})
	public String test14() throws Exception{
		
		return "ok";
	}
	
	@RequestMapping(value={"collection"})
	public String test15() throws Exception{
		
		return "collection";
	}
	
	@RequestMapping(value={"personalInfo"})
	public String test16() throws Exception{
		
		return "personalInfo";
	}
}
