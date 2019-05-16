package com.bean.model;

public class MovieLike {
    private String movielikeid;

    private String userid;

    private String movieid;

    private Boolean ifmovielike;

    public String getMovielikeid() {
        return movielikeid;
    }

    public void setMovielikeid(String movielikeid) {
        this.movielikeid = movielikeid == null ? null : movielikeid.trim();
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public String getMovieid() {
        return movieid;
    }

    public void setMovieid(String movieid) {
        this.movieid = movieid == null ? null : movieid.trim();
    }

    public Boolean getIfmovielike() {
        return ifmovielike;
    }

    public void setIfmovielike(Boolean ifmovielike) {
        this.ifmovielike = ifmovielike;
    }
}