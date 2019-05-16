package com.bean.dao;

import com.bean.model.LongComment;

public interface LongCommentMapper {
    int deleteByPrimaryKey(String longcommentsid);

    int insert(LongComment record);

    int insertSelective(LongComment record);

    LongComment selectByPrimaryKey(String longcommentsid);

    int updateByPrimaryKeySelective(LongComment record);

    int updateByPrimaryKeyWithBLOBs(LongComment record);

    int updateByPrimaryKey(LongComment record);
}