package com.bean.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bean.model.LongComment;
import com.bean.model.LongCommentLike;
import com.bean.model.Movie;
import com.bean.model.UserLongcomment;
import com.bean.service.LongCommentLikeService;
import com.bean.service.LongCommentService;
import com.bean.service.MovieService;
import com.bean.serviceImpl.LongCommentLikeServiceImpl;
import com.bean.serviceImpl.LongCommentServiceImpl;
import com.bean.serviceImpl.UserLongCommentServiceImpl;
import com.util.MyUUID;


/**
 * 影评详情页
 * 功能：
 * 1.显示影评信息
 * 2.可点赞
 * @author hefeng
 *
 */

@Controller
@RequestMapping(value={"/longCommentDetail"})
public class LongCommentDetail {
	@Autowired
	private LongCommentService longCommentService;
	@Autowired
	private LongCommentServiceImpl longCommentServiceImpl;
	@Autowired
	private LongCommentLikeService longCommentLikeService;
	@Autowired
	private LongCommentLikeServiceImpl longCommentLikeServiceImpl;
	@Autowired
	private UserLongCommentServiceImpl userLongCommentServiceImpl;
	@Autowired
	private MovieService movieService;

	@RequestMapping("")
	public String showLongCommentDetail(HttpServletRequest request,Model model,HttpSession session) {
		String longcommentid=request.getParameter("longcommentsid");
		
		//更新点赞数
		LongComment longComment=new LongComment();
		longComment.setLongcommentsid(longcommentid);
		longComment.setLongcommentslike(longCommentLikeServiceImpl.getLikeNum(longcommentid));
		longCommentServiceImpl.updateByPrimaryKeySelective(longComment);
		
		if (longcommentid!=null) {
			//长评信息
			UserLongcomment userLongcomment=userLongCommentServiceImpl.getModelByLongCommentId(longcommentid);
			model.addAttribute("userLongcomment", userLongcomment);
			
			//推荐文章
			List<UserLongcomment> randomList=userLongCommentServiceImpl.getRandomList();
			List<Movie> movieList=new ArrayList<>();
			for (UserLongcomment i : randomList) {
				movieList.add(movieService.selectByPrimaryKey(i.getMovieid()));
			}
			model.addAttribute("randomList", randomList);
			model.addAttribute("movieList", movieList);
			
			//是否点赞
			if(session.getAttribute("userid")==null) {//如果未登陆，默认没有点赞
				model.addAttribute("like", false);
			}else {
				String userid=session.getAttribute("userid").toString();
				LongCommentLike oldLongCommentLike=longCommentLikeServiceImpl.exist(longcommentid, userid);
				if(oldLongCommentLike!=null) {
					model.addAttribute("like", oldLongCommentLike.getLclikeornot());
				}else {
					model.addAttribute("like", false);
				}
					
			}
			
			return "longCommentDetail";
		}
		
		
		return "longCommentDetail";
	}
	
	//点赞
	@RequestMapping("like")
	@ResponseBody
	public String likeIt(HttpServletRequest request,HttpSession session) {
		if(session.getAttribute("userid")==null) {
			return "login";
		}
		String userid=session.getAttribute("userid").toString();
		String longcommentid=request.getParameter("longcommentsid");
		
		//如果like表中不存在，则添加
		LongCommentLike longCommentLike=new LongCommentLike();
		LongCommentLike oldLongCommentLike=longCommentLikeServiceImpl.exist(longcommentid, userid);
		if(oldLongCommentLike==null) {
			longCommentLike.setLongcommentslikeid(MyUUID.getUUID());
			longCommentLike.setLongcommentsid(longcommentid);
			longCommentLike.setUserid(userid);
			longCommentLike.setLclikeornot(true);//点赞
			longCommentLikeServiceImpl.insert(longCommentLike);
			return "add";
		}else {
			if(oldLongCommentLike.getLclikeornot()) {//如果原来是点赞，则取消点赞
				oldLongCommentLike.setLclikeornot(false);
				longCommentLikeServiceImpl.updateByPrimaryKey(oldLongCommentLike);//更新
				return "delete";
			}else {
				oldLongCommentLike.setLclikeornot(true);
				longCommentLikeServiceImpl.updateByPrimaryKey(oldLongCommentLike);//更新
				return "add";
			}
			
		}
	}
}
