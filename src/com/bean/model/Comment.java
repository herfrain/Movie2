package com.bean.model;

import java.util.Date;

public class Comment {
    private String commentsid;

    private String movieid;

    private String userid;

    private String commentsdetails;

    private Date commentstime;

    private Integer commentslike;

    public String getCommentsid() {
        return commentsid;
    }

    public void setCommentsid(String commentsid) {
        this.commentsid = commentsid == null ? null : commentsid.trim();
    }

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

    public String getCommentsdetails() {
        return commentsdetails;
    }

    public void setCommentsdetails(String commentsdetails) {
        this.commentsdetails = commentsdetails == null ? null : commentsdetails.trim();
    }

    public Date getCommentstime() {
        return commentstime;
    }

    public void setCommentstime(Date commentstime) {
        this.commentstime = commentstime;
    }

    public Integer getCommentslike() {
        return commentslike;
    }

    public void setCommentslike(Integer commentslike) {
        this.commentslike = commentslike;
    }
}