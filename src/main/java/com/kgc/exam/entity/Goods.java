package com.kgc.exam.entity;

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
}