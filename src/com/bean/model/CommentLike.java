package com.bean.model;

public class CommentLike {
    private String commentslikeid;

    private String commentsid;

    private String userid;

    private Boolean clikeornot;

    public String getCommentslikeid() {
        return commentslikeid;
    }

    public void setCommentslikeid(String commentslikeid) {
        this.commentslikeid = commentslikeid == null ? null : commentslikeid.trim();
    }

    public String getCommentsid() {
        return commentsid;
    }

    public void setCommentsid(String commentsid) {
        this.commentsid = commentsid == null ? null : commentsid.trim();
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public Boolean getClikeornot() {
        return clikeornot;
    }

    public void setClikeornot(Boolean clikeornot) {
        this.clikeornot = clikeornot;
    }
}