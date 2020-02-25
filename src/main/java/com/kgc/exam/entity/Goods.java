package com.kgc.exam.entity;

import java.util.Date;
import java.util.List;

public class Goods {
    /**
    * 商品编号
    */
    private Integer gId;

    /**
    * 商品名
    */
    private String gName;

    /**
    * 商品价格
    */
    private Double gPrice;

    /**
    * 商品描述
    */
    private String gContent;

    /**
    * 上传日期
    */
    private Date uploadtime;

    /**
    * 折扣状态
    */
    private Integer countstatus;

    /*
    * 商品图片
    * */
    private List<Image> images;

    public List<Image> getImages() {
        return images;
    }

    public void setImages(List<Image> images) {
        this.images = images;
    }

    public Integer getgId() {
        return gId;
    }

    public void setgId(Integer gId) {
        this.gId = gId;
    }

    public String getgName() {
        return gName;
    }

    public void setgName(String gName) {
        this.gName = gName;
    }

    public Double getgPrice() {
        return gPrice;
    }

    public void setgPrice(Double gPrice) {
        this.gPrice = gPrice;
    }

    public String getgContent() {
        return gContent;
    }

    public void setgContent(String gContent) {
        this.gContent = gContent;
    }

    public Date getUploadtime() {
        return uploadtime;
    }

    public void setUploadtime(Date uploadtime) {
        this.uploadtime = uploadtime;
    }

    public Integer getCountstatus() {
        return countstatus;
    }

    public void setCountstatus(Integer countstatus) {
        this.countstatus = countstatus;
    }
}