package com.bean.dao;

import com.bean.model.LongCommentLike;

public interface LongCommentLikeMapper {
    int deleteByPrimaryKey(String longcommentslikeid);

    int insert(LongCommentLike record);

    int insertSelective(LongCommentLike record);

    LongCommentLike selectByPrimaryKey(String longcommentslikeid);

    int updateByPrimaryKeySelective(LongCommentLike record);

    int updateByPrimaryKey(LongCommentLike record);
    
    //查找是否存在，存在则返回实例
    LongCommentLike exist(String longcommentslikeid,String userid);
    
    //获取点赞数
    int getLikeNum(String longcommentid);
}