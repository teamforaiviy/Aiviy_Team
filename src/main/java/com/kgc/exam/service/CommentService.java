package com.kgc.exam.service;

import com.kgc.exam.entity.Comment;

import java.util.List;

public interface CommentService {
    List<Comment> queryAll(Integer gId);

    List<Comment> queryComment(String gName);

    Boolean insert(Comment comment);

    Boolean deleteByPrimaryKey(Integer cId);

}
