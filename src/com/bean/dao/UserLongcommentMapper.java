package com.bean.dao;

import java.util.List;

import com.bean.model.UserLongcomment;

public interface UserLongcommentMapper {
    int insert(UserLongcomment record);

    int insertSelective(UserLongcomment record);
    
    List<UserLongcomment> getListByMovieId(String movieid);
    
    UserLongcomment getModelByLongCommentId(String longcommentid);
    
    List<UserLongcomment> getRandomList();
}