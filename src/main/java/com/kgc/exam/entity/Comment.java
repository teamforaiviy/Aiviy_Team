package com.kgc.exam.entity;

public class Comment {
    /**
    * 评论编号（自增）
    */
    private Integer cId;

    /**
    * 评论内容
    */
    private String cComment;

    /**
    * 用户id
    */
    private Integer userId;

    /**
    * 商品编号
    */
    private Integer gId;

    public Integer getcId() {
        return cId;
    }

    public void setcId(Integer cId) {
        this.cId = cId;
    }

    public String getcComment() {
        return cComment;
    }

    public void setcComment(String cComment) {
        this.cComment = cComment;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getgId() {
        return gId;
    }

    public void setgId(Integer gId) {
        this.gId = gId;
    }
}