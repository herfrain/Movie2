package com.bean.model;

import java.util.Date;

public class UserLongcomment {
    private String userid;

    private String username;

    private String longcommentsdetails;

    private Date longcommentstime;

    private String longcommentsheading;

    private Integer longcommentslike;

    private String movieid;
    
    private String longcommentsid;

    private Integer moviescore;
    
    
    public String getLongcommentsid() {
		return longcommentsid;
	}

	public void setLongcommentsid(String longcommentsid) {
		this.longcommentsid = longcommentsid;
	}

	public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getLongcommentsdetails() {
        return longcommentsdetails;
    }

    public void setLongcommentsdetails(String longcommentsdetails) {
        this.longcommentsdetails = longcommentsdetails == null ? null : longcommentsdetails.trim();
    }

    public Date getLongcommentstime() {
        return longcommentstime;
    }

    public void setLongcommentstime(Date longcommentstime) {
        this.longcommentstime = longcommentstime;
    }

    public String getLongcommentsheading() {
        return longcommentsheading;
    }

    public void setLongcommentsheading(String longcommentsheading) {
        this.longcommentsheading = longcommentsheading == null ? null : longcommentsheading.trim();
    }

    public Integer getLongcommentslike() {
        return longcommentslike;
    }

    public void setLongcommentslike(Integer longcommentslike) {
        this.longcommentslike = longcommentslike;
    }

    public String getMovieid() {
        return movieid;
    }

    public void setMovieid(String movieid) {
        this.movieid = movieid == null ? null : movieid.trim();
    }

	public Integer getMoviescore() {
		return moviescore;
	}

	public void setMoviescore(Integer moviescore) {
		this.moviescore = moviescore;
	}
    
    
}