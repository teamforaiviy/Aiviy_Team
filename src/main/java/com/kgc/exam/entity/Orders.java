package com.kgc.exam.entity;

import java.util.Date;

public class Orders {
    /**
    * 订单自增id
    */
    private Integer oId;

    /**
    * 订单号
    */
    private String oNo;

    /**
    * 订单状态
    */
    private Integer oState;

    /**
    * 商品总价
    */
    private Double oNum;

    /**
    * 用户id
    */
    private Integer userId;

    /**
    * 创建时间
    */
    private Date createddate;

    /*
    * 用户
    * */
    private  User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getoId() {
        return oId;
    }

    public void setoId(Integer oId) {
        this.oId = oId;
    }

    public String getoNo() {
        return oNo;
    }

    public void setoNo(String oNo) {
        this.oNo = oNo;
    }

    public Integer getoState() {
        return oState;
    }

    public void setoState(Integer oState) {
        this.oState = oState;
    }

    public Double getoNum() {
        return oNum;
    }

    public void setoNum(Double oNum) {
        this.oNum = oNum;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Date getCreateddate() {
        return createddate;
    }

    public void setCreateddate(Date createddate) {
        this.createddate = createddate;
    }
}