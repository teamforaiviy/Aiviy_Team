package com.kgc.exam.mapper;

import com.kgc.exam.entity.Comment;

public interface CommentMapper {
    int deleteByPrimaryKey(Integer cId);

    int insert(Comment record);

    int insertSelective(Comment record);

    Comment selectByPrimaryKey(Integer cId);

    int updateByPrimaryKeySelective(Comment record);

    int updateByPrimaryKey(Comment record);
}