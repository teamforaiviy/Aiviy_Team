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
    * 收货人姓
    */
    private String adSname;

    /**
    * 收货人名
    */
    private String adName;

    /**
    * 用户id
    */
    private Integer userId;

    private User user;

    public String getAdSname() {
        return adSname;
    }

    public void setAdSname(String adSname) {
        this.adSname = adSname;
    }

    public String getAdName() {
        return adName;
    }

    public void setAdName(String adName) {
        this.adName = adName;
    }

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
    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
}