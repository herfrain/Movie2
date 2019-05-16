package com.bean.model;

public class Movie {
    private String movieid;

    private String userid;

    private String moviename;

    private String movieintroduction;

    private String movietype;

    private Integer movielike;

    private Double moviescore;

    private Integer moviewatch;


    private String movieupdatedate;

    public String getMovieid() {
        return movieid;
    }

    public void setMovieid(String movieid) {
        this.movieid = movieid == null ? null : movieid.trim();
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public String getMoviename() {
        return moviename;
    }

    public void setMoviename(String moviename) {
        this.moviename = moviename == null ? null : moviename.trim();
    }

    public String getMovieintroduction() {
        return movieintroduction;
    }

    public void setMovieintroduction(String movieintroduction) {
        this.movieintroduction = movieintroduction == null ? null : movieintroduction.trim();
    }

    public String getMovietype() {
        return movietype;
    }

    public void setMovietype(String movietype) {
        this.movietype = movietype == null ? null : movietype.trim();
    }

    public Integer getMovielike() {
        return movielike;
    }

    public void setMovielike(Integer movielike) {
        this.movielike = movielike;
    }

    public Double getMoviescore() {
        return moviescore;
    }

    public void setMoviescore(Double moviescore) {
        this.moviescore = moviescore;
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
}