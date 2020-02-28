package com.kgc.exam.entity;

public class Address {
    /**
    * 地址编号
    */
    private Integer adId;
    /**
    * 收货地址
    */
    private String adAddress;

    /**
    * 收货人电话
    */
    private String adPhone;

    /**
    * 收货人姓名
    */
    private String adUser;

    /**
    * 用户id
    */
    private Integer userId;

    private User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getAdId() {
        return adId;
    }

    public void setAdId(Integer adId) {
        this.adId = adId;
    }

    public String getAdAddress() {
        return adAddress;
    }

    public void setAdAddress(String adAddress) {
        this.adAddress = adAddress;
    }

    public String getAdPhone() {
        return adPhone;
    }

    public void setAdPhone(String adPhone) {
        this.adPhone = adPhone;
    }

    public String getAdUser() {
        return adUser;
    }

    public void setAdUser(String adUser) {
        this.adUser = adUser;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
}