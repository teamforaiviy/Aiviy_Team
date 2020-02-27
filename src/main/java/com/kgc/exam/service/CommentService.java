package com.kgc.exam.service;

import com.kgc.exam.entity.Comment;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CommentService {
    List<Comment> queryAll(@Param("gId") Integer gId);

    Boolean insert(@Param("comment")Comment comment);
}
