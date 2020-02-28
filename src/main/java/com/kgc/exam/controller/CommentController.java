package com.kgc.exam.controller;

import com.kgc.exam.entity.Comment;
import com.kgc.exam.service.CommentService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("comment")
@ResponseBody
public class CommentController {

    @Autowired
    private CommentService commentService;

    @RequestMapping("queryAll")
    public List<Comment> queryAll(@RequestParam("gId") Integer gId){
        return commentService.queryAll(gId);
    }

    @RequestMapping("insert")
    public Boolean insert(Comment comment){
        return commentService.insert(comment);
    }
}
