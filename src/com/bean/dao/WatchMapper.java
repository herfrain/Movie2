package com.bean.dao;

import com.bean.model.Watch;

public interface WatchMapper {
    int deleteByPrimaryKey(String watchid);

    int insert(Watch record);

    int insertSelective(Watch record);

    Watch selectByPrimaryKey(String watchid);

    int updateByPrimaryKeySelective(Watch record);

    int updateByPrimaryKey(Watch record);
}