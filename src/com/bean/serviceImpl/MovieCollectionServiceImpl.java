package com.bean.serviceImpl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.dao.MovieCollectionMapper;
import com.bean.model.MovieCollection;
import com.bean.service.MovieCollectionService;


@Service
public class MovieCollectionServiceImpl implements MovieCollectionService{

	@Autowired
	private MovieCollectionMapper mapper;

	@Override
	public List<MovieCollection> selectMovieCollectionsById(HashMap<String, Object> map) {
		return mapper.selectMovieCollectionsById(map);
	}

	@Override
	public Integer delectMovieCollection(HashMap<String, String> map) {
		return mapper.delectMovieCollection(map);
	}

	@Override
	public Integer insertMovieCollection(MovieCollection movieCollection) {
		return mapper.insertMovieCollection(movieCollection);
	}

	@Override
	public Integer queryTotalCollectionCount(String userID) {
		return mapper.queryTotalCollectionCount(userID);
	} 
	
	
}
