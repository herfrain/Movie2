package com.bean.model;

import java.sql.Timestamp;
import java.util.Date;

public class MovieComment {
	private String commentsID;
	private String movieID;
	private String userID;
	private String commentsDetails;
	private Timestamp commentsTime;
	private Integer commentsLike;
	private String userName;
	
	
	public MovieComment() {}


	
	
	@Override
	public String toString() {
		return "MovieComment [commentsID=" + commentsID + ", movieID=" + movieID + ", userID=" + userID
				+ ", commentsDetails=" + commentsDetails + ", commentsTime=" + commentsTime + ", commentsLike="
				+ commentsLike + ", userName=" + userName + "]";
	}




	public String getUserName() {
		return userName;
	}




	public void setUserName(String userName) {
		this.userName = userName;
	}




	public String getCommentsID() {
		return commentsID;
	}


	public void setCommentsID(String commentsID) {
		this.commentsID = commentsID;
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


	public String getCommentsDetails() {
		return commentsDetails;
	}


	public void setCommentsDetails(String commentsDetails) {
		this.commentsDetails = commentsDetails;
	}


	


	public Timestamp getCommentsTime() {
		return commentsTime;
	}

	public void setCommentsTime(Timestamp commentsTime) {
		this.commentsTime = commentsTime;
	}

	public Integer getCommentsLike() {
		return commentsLike;
	}


	public void setCommentsLike(Integer commentsLike) {
		this.commentsLike = commentsLike;
	}
	
	
	
}
