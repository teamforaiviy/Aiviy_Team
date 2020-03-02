package com.kgc.exam.entity;

import java.util.List;

public class Shopping {
    /*
    * 购物车数据主键
    * */
    private Integer sId;
    /*
    * 商品名称
    * */
    private String sName;
    /*
    * 商品单价
    * */
    private Double sPrice;
    /*
    * 该商品总数
    * */
    private Integer sNum;
    /*
    * 该商品总价
    * */
    private Double sTotal;
    /*
    * 商品id
    * */
    private Integer gId;
    /*
    * 用户id，表示该条购物车数据是哪个用户生成的
    * */
    private Integer uId;
    /*
    * 显示的图片
    * */
    private List<Image> images;
    /*
    * 购物车状态:0表示未生成订单，1表示已生成订单
    * */
    private Integer sStatus;

    public Integer getsStatus() {
        return sStatus;
    }

    public void setsStatus(Integer sStatus) {
        this.sStatus = sStatus;
    }

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    public List<Image> getImages() {
        return images;
    }

    public void setImages(List<Image> images) {
        this.images = images;
    }

    public Integer getsId() {
        return sId;
    }

    public void setsId(Integer sId) {
        this.sId = sId;
    }

    public String getsName() {
        return sName;
    }

    public void setsName(String sName) {
        this.sName = sName;
    }

    public Double getsPrice() {
        return sPrice;
    }

    public void setsPrice(Double sPrice) {
        this.sPrice = sPrice;
    }

    public Integer getsNum() {
        return sNum;
    }

    public void setsNum(Integer sNum) {
        this.sNum = sNum;
    }

    public Double getsTotal() {
        return sTotal;
    }

    public void setsTotal(Double sTotal) {
        this.sTotal = sTotal;
    }

    public Integer getgId() {
        return gId;
    }

    public void setgId(Integer gId) {
        this.gId = gId;
    }
}
