package com.bean.service;

import java.util.HashMap;
import java.util.List;

import com.bean.model.Comment;
import com.bean.model.MovieComment;
import com.bean.model.MovieDetail;


public interface MovieDetailService {
	public MovieDetail selectMovieDetailById(String id);
	public List<MovieComment> selectMovieCommentsById(String id);
	public Integer selectCommentCountById(String id);
	public Integer queryCollection(HashMap<String, String> map);
	public Integer insertComment(Comment comment);
}
