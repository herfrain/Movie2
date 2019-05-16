package com.bean.dao;

import com.bean.model.UserMovie;

public interface UserMovieMapper {
    int insert(UserMovie record);

    int insertSelective(UserMovie record);
}