package com.kgc.exam.service.impl;

import com.kgc.exam.entity.Comment;
import com.kgc.exam.mapper.CommentMapper;
import com.kgc.exam.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentMapper commentMapper;

    @Override
    public List<Comment> queryAll(Integer gId) {
        return commentMapper.queryAll(gId);
    }

    @Override
    public Boolean insert(Comment comment) {
        return commentMapper.insert(comment)==1;
    }
}
