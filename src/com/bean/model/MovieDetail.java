package com.bean.model;

import java.util.List;

public class MovieDetail {
	private String movieID;
	private String userID;
	private String movieName;
	private String movieIntroduction;
	private String movieType;
	private Integer movieLike;
	private Double movieScore;
	private Integer movieWatch;
	private String userName;
	private String movieUpdateDate;
	private Integer collection;
	
	private Integer totalCommentCount;
	
	private List<MovieComment> movieComment;
	
	
	public MovieDetail() {}


	public Integer getCollection() {
		return collection;
	}


	public void setCollection(Integer collection) {
		this.collection = collection;
	}


	public Integer getTotalCommentCount() {
		return totalCommentCount;
	}

	public void setTotalCommentCount(Integer totalCommentCount) {
		this.totalCommentCount = totalCommentCount;
	}


	public List<MovieComment> getMovieComment() {
		return movieComment;
	}


	public void setMovieComment(List<MovieComment> movieComment) {
		this.movieComment = movieComment;
	}


	public String getUserName() {
		return userName;
	}



	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getMovieID() {
		return movieID;
	}



	public void setMovieID(String movieID) {
		this.movieID = movieID;
	}



	public String getUserID() {
		return userID;
	}



	public void setUserID(String userID) {
		this.userID = userID;
	}



	public String getMovieName() {
		return movieName;
	}



	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}



	public String getMovieIntroduction() {
		return movieIntroduction;
	}



	public void setMovieIntroduction(String movieIntroduction) {
		this.movieIntroduction = movieIntroduction;
	}



	public String getMovieType() {
		return movieType;
	}



	public void setMovieType(String movieType) {
		this.movieType = movieType;
	}



	public Integer getMovieLike() {
		return movieLike;
	}



	public void setMovieLike(Integer movieLike) {
		this.movieLike = movieLike;
	}



	public Double getMovieScore() {
		return movieScore;
	}



	public void setMovieScore(Double movieScore) {
		this.movieScore = movieScore;
	}



	public Integer getMovieWatch() {
		return movieWatch;
	}



	public void setMovieWatch(Integer movieWatch) {
		this.movieWatch = movieWatch;
	}



	public String getMovieUpdateDate() {
		return movieUpdateDate;
	}



	public void setMovieUpdateDate(String movieUpdateDate) {
		this.movieUpdateDate = movieUpdateDate;
	}

	
	
}
