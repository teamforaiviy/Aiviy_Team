package com.kgc.exam.entity;

public class Order {
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
    * 商品数量
    */
    private Integer oNum;

    /**
    * 用户id
    */
    private Integer userId;

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

    public Integer getoNum() {
        return oNum;
    }

    public void setoNum(Integer oNum) {
        this.oNum = oNum;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
}