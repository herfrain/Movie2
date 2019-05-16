package com.bean.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.dao.MovieMapper;
import com.bean.model.Movie;
import com.bean.service.MovieService;

@Service
public class MovieServiceImpl implements MovieService {
	@Autowired
	private MovieMapper collectionsDao;

	@Override
	public int insert(Movie record) {
		// TODO Auto-generated method stub
		return this.collectionsDao.insert(record);
	}

	@Override
	public int deleteByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return this.collectionsDao.deleteByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKey(Movie record) {
		// TODO Auto-generated method stub
		return this.collectionsDao.updateByPrimaryKey(record);
	}

	@Override
	public Movie selectByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return this.collectionsDao.selectByPrimaryKey(id);
	}

//	NEW
	@Override
	public List<Movie> selectWithOrder(String num, String orderTable, boolean isDESC) {
		// TODO Auto-generated method stub
		return this.collectionsDao.selectWithOrder(num, orderTable, isDESC);
	}

	@Override
	public List<String> selectSingleCol(boolean distinct, String col, String num) {
		// TODO Auto-generated method stub
		return this.collectionsDao.selectSingleCol(distinct, col, num);
	}

	@Override
	public List<Movie> selectWithWhereAndOrder(String col, String eqCol, String orderCol, boolean isDESC, String num) {
		// TODO Auto-generated method stub
		return this.collectionsDao.selectWithWhereAndOrder(col, eqCol, orderCol, isDESC, num);
	}

	@Override
	public List<Movie> search(String keyword) {
		// TODO Auto-generated method stub
		return this.collectionsDao.search(keyword);
	}

	//new2
	
	@Override
	public List<Movie> selectWithUser(String userid) {
		// TODO Auto-generated method stub
		return this.collectionsDao.selectWithUser(userid);
	}
	
	
	public List<Movie> selectAll(){
		return this.collectionsDao.selectAll();
	}
	
}
