package com.bean.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.bean.model.LongComment;
import com.bean.model.Movie;
import com.bean.model.UserLongcomment;

/**
 * 服务开启时更新
 * 每隔30分钟更新一次电影评分
 * 每隔15分钟更新一次长评点赞数
 * @author hefeng
 *
 */

@Service
@EnableScheduling
public class UpdateTask implements InitializingBean{
	
	@Autowired
	UserLongCommentServiceImpl userLongCommentServiceImpl;
	@Autowired
	LongCommentServiceImpl longCommentServiceImpl;
	@Autowired
	LongCommentLikeServiceImpl longCommentLikeServiceImpl;
	@Autowired
	MovieServiceImpl movieServiceImpl;
	
	//30分钟更新一次电影评分
	@Scheduled(cron="0 */30 * * * ?")
	public void updateMovieScore() {
		List<Movie> movies=movieServiceImpl.selectAll();
		//更新评分
		for(Movie movie : movies) {
			List<UserLongcomment> userLongcomments=userLongCommentServiceImpl.getListByMovieId(movie.getMovieid());
			if(userLongcomments.isEmpty()) {
				continue;
			}
			double avgScore=0.0;
			int totalScore=0;
			for(UserLongcomment userLongcomment : userLongcomments) {
				totalScore+=userLongcomment.getMoviescore();
			}
			System.out.println(totalScore);
			System.out.println(userLongcomments.size());
			avgScore=totalScore/userLongcomments.size();
			movie.setMoviescore(avgScore*2);//范围在0~10
			movieServiceImpl.updateByPrimaryKey(movie);
		}
	}
	
	//15分钟更新一次长评点赞数
	@Scheduled(cron="0 */15 * * * ?")
	public void updateLongCommnetLike() {
		List<Movie> movies=movieServiceImpl.selectAll();
		for(Movie movie : movies) {
			List<UserLongcomment> userLongcomments=userLongCommentServiceImpl.getListByMovieId(movie.getMovieid());
			if(userLongcomments.isEmpty()) {
				continue;
			}
			for(UserLongcomment userLongcomment : userLongcomments) {
				//更新长评点赞数
				LongComment longComment=new LongComment();
				longComment.setLongcommentsid(userLongcomment.getLongcommentsid());
				longComment.setLongcommentslike(longCommentLikeServiceImpl.getLikeNum(userLongcomment.getLongcommentsid()));
				longCommentServiceImpl.updateByPrimaryKeySelective(longComment);
			}
		}
		
	}

	@Override
	public void afterPropertiesSet() throws Exception {
		// TODO Auto-generated method stub
		this.updateMovieScore();
		this.updateLongCommnetLike();
	}

}

