package com.bean.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bean.model.Movie;

public interface MovieMapper {
	int deleteByPrimaryKey(String movieid);

	int insert(Movie record);

	int insertSelective(Movie record);

	Movie selectByPrimaryKey(String movieid);

	int updateByPrimaryKeySelective(Movie record);

	int updateByPrimaryKey(Movie record);

//	NEW
	List<Movie> selectWithOrder(@Param("num") String num, @Param("orderTable") String orderTable,
			@Param("isDESC") boolean isDESC);

	List<Movie> selectWithWhereAndOrder(@Param("col") String col, @Param("eqCol") String eqCol,
			@Param("orderCol") String orderCol, @Param("isDESC") boolean isDESC, @Param("num") String num);

	List<Movie> search(@Param("keyword") String keyword);

	List<String> selectSingleCol(@Param("distinct") boolean distinct, @Param("col") String col,
			@Param("num") String num);

	//new2
	List<Movie> selectWithUser(@Param("userid") String userid);
	
	List<Movie> selectAll();
}