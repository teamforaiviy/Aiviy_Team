package com.kgc.exam.entity;

public class Image {
    /**
    * 图片编号
    */
    private Integer imgId;

    /**
    * 图片路径
    */
    private String imgUrl;

    /**
    * 商品编号
    */
    private Integer gId;

    public Integer getImgId() {
        return imgId;
    }

    public void setImgId(Integer imgId) {
        this.imgId = imgId;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public Integer getgId() {
        return gId;
    }

    public void setgId(Integer gId) {
        this.gId = gId;
    }
}