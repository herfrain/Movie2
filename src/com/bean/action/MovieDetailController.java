package com.bean.action;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.model.Comment;
import com.bean.model.MovieComment;
import com.bean.model.MovieDetail;
import com.bean.service.CollectionService;
import com.bean.service.CommentService;
import com.bean.service.LongCommentService;
import com.bean.service.MovieDetailService;
import com.bean.service.MovieService;
import com.bean.service.UserCommentService;
import com.bean.service.UserLongCommentService;

/**
 * 视频详情页面（需提供视频id 功能： 1.显示功能（简介、投稿人 、播放 、评论、评分、投稿时间、观看人数、点赞数 2.评论功能 3.评分功能，点赞功能
 * 4.影评入口 5.收藏功能
 * 
 * @author hefeng
 *
 */

@Controller
public class MovieDetailController {
	@Autowired
	private MovieDetailService movieDetailService;

	@RequestMapping("/movieDetail")
	public String movieDetail(String movieID, Model model, HttpServletRequest request, HttpServletResponse response) {
		if (movieID == null) {
			return "redirect:/index.jsp";
		}

		String userID = (String)request.getSession().getAttribute("userid");

		List<MovieComment> movieComment = movieDetailService.selectMovieCommentsById(movieID);
		MovieDetail movieDetail = movieDetailService.selectMovieDetailById(movieID);
		Integer commentCount = movieDetailService.selectCommentCountById(movieID);
		HashMap<String, String> map = new HashMap<>();
		if( userID != null) {
			map.put("movieID", movieID);
			map.put("userID", userID);
			Integer collection = movieDetailService.queryCollection(map);
			movieDetail.setCollection(collection);
		}
		
		movieDetail.setMovieComment(movieComment);
		movieDetail.setTotalCommentCount(commentCount);
		
		model.addAttribute("movieDetail", movieDetail);
		return "movieDetail";
	}
	
	@RequestMapping("/commentSubmit")
	public String commentSubmit(String movieID,String commentDetail, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
		String userID = (String)request.getSession().getAttribute("userid");
		if(userID !=null && movieID != null && commentDetail != null) {
			System.out.println(commentDetail);
			commentDetail=new String(commentDetail.getBytes("iso-8859-1"),"utf-8");//转换格式，之前是乱码
			Comment comment = new Comment();
			comment.setMovieid(movieID);
			comment.setCommentsid(UUID.randomUUID().toString().replaceAll("-", ""));
			comment.setCommentslike(0);
			comment.setCommentstime(new Date());
			comment.setCommentsdetails(commentDetail);
			comment.setUserid(userID);
			movieDetailService.insertComment(comment);
		}
		return "redirect:movieDetail.do?movieID="+movieID;
	
	}
	
}


