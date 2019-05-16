package com.bean.dao;

import com.bean.model.MovieLike;

public interface MovieLikeMapper {
    int deleteByPrimaryKey(String movielikeid);

    int insert(MovieLike record);

    int insertSelective(MovieLike record);

    MovieLike selectByPrimaryKey(String movielikeid);

    int updateByPrimaryKeySelective(MovieLike record);

    int updateByPrimaryKey(MovieLike record);
}