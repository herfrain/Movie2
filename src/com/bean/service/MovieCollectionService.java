package com.bean.service;

import java.util.HashMap;
import java.util.List;

import com.bean.model.MovieCollection;


public interface MovieCollectionService {
	public List<MovieCollection> selectMovieCollectionsById(HashMap<String, Object> map);
	public Integer delectMovieCollection(HashMap<String, String> map);
	public Integer insertMovieCollection(MovieCollection movieCollection);
	public Integer queryTotalCollectionCount(String userID);
	
}
