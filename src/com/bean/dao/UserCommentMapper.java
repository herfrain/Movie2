package com.bean.dao;

import com.bean.model.UserComment;

public interface UserCommentMapper {
    int insert(UserComment record);

    int insertSelective(UserComment record);
}