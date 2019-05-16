package com.bean.model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class MovieCollection {
	private String collectionsID;
	private String userID;
	private String movieID;
	
	private Date saveTime;
	private String movieName;
	
	
	public MovieCollection() {}

	

	public String getCollectionsID() {
		return collectionsID;
	}


	public void setCollectionsID(String collectionsID) {
		this.collectionsID = collectionsID;
	}


	public String getUserID() {
		return userID;
	}


	public void setUserID(String userID) {
		this.userID = userID;
	}


	public String getMovieID() {
		return movieID;
	}


	public void setMovieID(String movieID) {
		this.movieID = movieID;
	}


	public Date getSaveTime() {
		return saveTime;
	}


	public void setSaveTime(Date saveTime) {
		this.saveTime = saveTime;
	}


	public String getMovieName() {
		return movieName;
	}


	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}


	
	
	
}
