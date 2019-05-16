package com.bean.model;

public class LongCommentLike {
    private String longcommentslikeid;

    private String longcommentsid;

    private String userid;

    private Boolean lclikeornot;

    public String getLongcommentslikeid() {
        return longcommentslikeid;
    }

    public void setLongcommentslikeid(String longcommentslikeid) {
        this.longcommentslikeid = longcommentslikeid == null ? null : longcommentslikeid.trim();
    }

    public String getLongcommentsid() {
        return longcommentsid;
    }

    public void setLongcommentsid(String longcommentsid) {
        this.longcommentsid = longcommentsid == null ? null : longcommentsid.trim();
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public Boolean getLclikeornot() {
        return lclikeornot;
    }

    public void setLclikeornot(Boolean lclikeornot) {
        this.lclikeornot = lclikeornot;
    }
}