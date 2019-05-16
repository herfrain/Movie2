package com.bean.dao;

import com.bean.model.Comment;

public interface CommentMapper {
    int deleteByPrimaryKey(String commentsid);

    int insert(Comment record);

    int insertSelective(Comment record);

    Comment selectByPrimaryKey(String commentsid);

    int updateByPrimaryKeySelective(Comment record);

    int updateByPrimaryKey(Comment record);
}