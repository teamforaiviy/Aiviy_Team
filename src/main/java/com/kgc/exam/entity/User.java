package com.kgc.exam.entity;

public class User {
    /**
    * 自增id
    */
    private Integer userId;

    /**
    * 用户名
    */
    private String userName;

    /**
    * 邮箱
    */
    private String userMail;

    /**
    * 电话号码
    */
    private String userPhone;

    /**
    * 密码
    */
    private String userPwd;

    /**
    * 消费金额
    */
    private Double userMoney;

    /**
    * 昵称
    */
    private String nickname;

    /**
    * 会员id
    */
    private Integer vId;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserMail() {
        return userMail;
    }

    public void setUserMail(String userMail) {
        this.userMail = userMail;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public String getUserPwd() {
        return userPwd;
    }

    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd;
    }

    public Double getUserMoney() {
        return userMoney;
    }

    public void setUserMoney(Double userMoney) {
        this.userMoney = userMoney;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public Integer getvId() {
        return vId;
    }

    public void setvId(Integer vId) {
        this.vId = vId;
    }
}