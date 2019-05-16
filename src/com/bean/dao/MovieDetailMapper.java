package com.bean.dao;

import java.util.HashMap;
import java.util.List;

import com.bean.model.Comment;
import com.bean.model.MovieComment;
import com.bean.model.MovieDetail;


public interface MovieDetailMapper {
	public MovieDetail selectMovieDetailById(String movieID);
	public List<MovieComment> selectMovieCommentsById(String movieID);
	public Integer selectCommentCountById(String movieID);
	public Integer queryCollection(HashMap<String, String> map);//查询影片是否已收藏
	public Integer insertComment(Comment comment);
}
