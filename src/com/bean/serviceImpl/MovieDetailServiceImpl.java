package com.bean.serviceImpl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.dao.MovieDetailMapper;
import com.bean.model.Comment;
import com.bean.model.MovieComment;
import com.bean.model.MovieDetail;
import com.bean.service.MovieDetailService;


@Service
public class MovieDetailServiceImpl implements MovieDetailService{

	@Autowired
	private MovieDetailMapper movieDetailMapper; 
	
	@Override
	public MovieDetail selectMovieDetailById(String id) {
		return movieDetailMapper.selectMovieDetailById(id);
	}

	@Override
	public List<MovieComment> selectMovieCommentsById(String id) {
		return movieDetailMapper.selectMovieCommentsById(id);
	}

	@Override
	public Integer selectCommentCountById(String id) {
		return movieDetailMapper.selectCommentCountById(id);
	}

	@Override
	public Integer queryCollection(HashMap<String, String> map) {
		return movieDetailMapper.queryCollection(map);
	}
	
	@Override
	public Integer insertComment(Comment comment) {
		return movieDetailMapper.insertComment(comment);
	}
	
}
