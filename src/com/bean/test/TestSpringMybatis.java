package com.bean.test;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.model.Comment;
import com.bean.model.CommentLike;
import com.bean.model.LongComment;
import com.bean.model.Movie;
import com.bean.model.User;
import com.bean.service.CommentLikeService;
import com.bean.service.CommentService;
import com.bean.service.LongCommentLikeService;
import com.bean.service.LongCommentService;
import com.bean.service.MovieLikeService;
import com.bean.service.MovieService;
import com.bean.service.UserService;
import com.bean.service.WatchService;

@Controller
@RequestMapping("/TestSpringMybatis")
public class TestSpringMybatis {
	
	@Autowired
	UserService userService;
	@Autowired
	CommentService commentService;
	@Autowired
	CommentLikeService commentLikeService;
	@Autowired
	LongCommentService longCommentService;
	@Autowired
	LongCommentLikeService longCommentLikeService;
	@Autowired
	MovieService movieService;
	@Autowired
	MovieLikeService movieLikeService;
	@Autowired
	WatchService watchService;
	
	@RequestMapping("insertUser")
	public String insertUser(HttpServletRequest request) {
		String userid=request.getParameter("userid");
		String id=request.getParameter("id");

//		Comment comment=new Comment();
//		comment.setCommentsid(id);
//		commentService.insert(comment);
//		CommentLike commentLike=new CommentLike();
//		commentLike.setCommentslikeid(id);
//		commentLikeService.insert(commentLike);
//		LongComment longComment=new LongComment();
//		longComment.setLongcommentsid(id);
//		longCommentService.insert(longComment);
//		Movie movie=new Movie();
//		movie.setMovieid(id);
//		movie.setUserid(userid);
//		movieService.insert(movie);

		
		System.out.println(userid);
		User user=new User();
    	user.setUserid(userid);
    	user.setUsername("hefeng");
    	user.setUserpassword("hefeng123");
    	user.setUserdate("2019-4-12");
		int x=userService.insert(user);
		System.out.println(x);
		
		List<User> users=userService.getUserList();
        for (User u : users) {
            System.out.println(u);
        }
		
		return "ok";
	}
}
