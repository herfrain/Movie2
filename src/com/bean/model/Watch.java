package com.bean.model;

public class Watch {
    private String watchid;

    private String userid;

    private String movieid;

    private Boolean ifwatch;

    public String getWatchid() {
        return watchid;
    }

    public void setWatchid(String watchid) {
        this.watchid = watchid == null ? null : watchid.trim();
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

    public Boolean getIfwatch() {
        return ifwatch;
    }

    public void setIfwatch(Boolean ifwatch) {
        this.ifwatch = ifwatch;
    }
}