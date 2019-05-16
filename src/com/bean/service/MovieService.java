package com.bean.service;

import java.util.List;

import com.bean.model.Movie;

//接口
public interface MovieService {

	public int insert(Movie movie);

	public int deleteByPrimaryKey(String movieid);

	public int updateByPrimaryKey(Movie movie);

	public Movie selectByPrimaryKey(String movieid);

//	NEW
	public List<Movie> selectWithOrder(String num, String orderTable, boolean isDESC);

	public List<Movie> selectWithWhereAndOrder(String col, String eqCol, String orderCol, boolean isDESC, String num);

	public List<Movie> search(String keyword);

	public List<String> selectSingleCol(boolean distinct, String col, String num);

//new2
	public List<Movie> selectWithUser(String userid);
	
}
