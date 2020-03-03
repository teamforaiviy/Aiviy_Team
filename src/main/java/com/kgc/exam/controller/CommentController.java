package com.kgc.exam.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.kgc.exam.entity.Comment;
import com.kgc.exam.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
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

    @RequestMapping("/queryComment")
    public PageInfo queryComment(@RequestParam("gName") String gName,
                                      @RequestParam(value = "pn",defaultValue = "1") Integer pn,
                                      @RequestParam(value = "ps",defaultValue = "5") Integer ps) {
        PageHelper.startPage(pn,ps);
        List<Comment> comments = commentService.queryComment(gName);
        PageInfo pageInfo = new PageInfo(comments,3);
        return pageInfo;
    }

    @RequestMapping("insert")
    public Boolean insert(@RequestParam("gId") Integer gId,
                          @RequestParam("cComment") String comment,
                          @RequestParam("ctime") Date ctime,
                          @RequestParam("uid") Integer uid){
        Comment comment1 = new Comment();
        comment1.setcComment(comment);
        comment1.setCtime(ctime);
        comment1.setgId(gId);
        comment1.setUserId(uid);

        return commentService.insert(comment1);
    }
}
