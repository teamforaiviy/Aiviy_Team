package com.kgc.exam.mapper;

import com.kgc.exam.entity.Comment;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CommentMapper {

    List<Comment> queryAll(@Param("gId") Integer gId);

    /**
     * 通过商品名查询评价
     * @param gName
     * @return
     */
    List<Comment> queryComment(@Param("gName") String gName);

    Integer insert(@Param("comment")Comment comment);

    Comment selectByPrimaryKey(Integer cId);

    int deleteByPrimaryKey(Integer cId);

    int insertSelective(Comment record);

    int updateByPrimaryKeySelective(Comment record);

    int updateByPrimaryKey(Comment record);
}