package com.bean.dao;

import com.bean.model.CommentLike;

public interface CommentLikeMapper {
    int deleteByPrimaryKey(String commentslikeid);

    int insert(CommentLike record);

    int insertSelective(CommentLike record);

    CommentLike selectByPrimaryKey(String commentslikeid);

    int updateByPrimaryKeySelective(CommentLike record);

    int updateByPrimaryKey(CommentLike record);
}