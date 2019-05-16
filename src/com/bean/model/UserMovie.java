package com.bean.model;

public class UserMovie {
    private String userid;

    private String username;

    private String movieid;

    private String moviename;

    private String moviepictureurl;

    private Double moviescore;

    private String movieurl;

    private Integer moviewatch;

    private String movieupdatedate;

    private Integer movielike;

    private String movietype;

    private String movieintroduction;

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

    public String getMovieid() {
        return movieid;
    }

    public void setMovieid(String movieid) {
        this.movieid = movieid == null ? null : movieid.trim();
    }

    public String getMoviename() {
        return moviename;
    }

    public void setMoviename(String moviename) {
        this.moviename = moviename == null ? null : moviename.trim();
    }

    public String getMoviepictureurl() {
        return moviepictureurl;
    }

    public void setMoviepictureurl(String moviepictureurl) {
        this.moviepictureurl = moviepictureurl == null ? null : moviepictureurl.trim();
    }

    public Double getMoviescore() {
        return moviescore;
    }

    public void setMoviescore(Double moviescore) {
        this.moviescore = moviescore;
    }

    public String getMovieurl() {
        return movieurl;
    }

    public void setMovieurl(String movieurl) {
        this.movieurl = movieurl == null ? null : movieurl.trim();
    }

    public Integer getMoviewatch() {
        return moviewatch;
    }

    public void setMoviewatch(Integer moviewatch) {
        this.moviewatch = moviewatch;
    }

    public String getMovieupdatedate() {
        return movieupdatedate;
    }

    public void setMovieupdatedate(String movieupdatedate) {
        this.movieupdatedate = movieupdatedate == null ? null : movieupdatedate.trim();
    }

    public Integer getMovielike() {
        return movielike;
    }

    public void setMovielike(Integer movielike) {
        this.movielike = movielike;
    }

    public String getMovietype() {
        return movietype;
    }

    public void setMovietype(String movietype) {
        this.movietype = movietype == null ? null : movietype.trim();
    }

    public String getMovieintroduction() {
        return movieintroduction;
    }

    public void setMovieintroduction(String movieintroduction) {
        this.movieintroduction = movieintroduction == null ? null : movieintroduction.trim();
    }
}