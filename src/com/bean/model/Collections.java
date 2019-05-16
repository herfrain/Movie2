package com.bean.model;


//名字要与java.unit.Collection不同，不然映射不了
public class Collections {
    private String collectionsid;

    private String userid;

    private String movieid;

    public String getCollectionsid() {
        return collectionsid;
    }

    public void setCollectionsid(String collectionsid) {
        this.collectionsid = collectionsid == null ? null : collectionsid.trim();
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
}