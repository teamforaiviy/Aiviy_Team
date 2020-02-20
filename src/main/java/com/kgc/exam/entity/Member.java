package com.kgc.exam.entity;

public class Member {
    /**
    * 会员等级（1、2、3、4）
    */
    private Integer vId;

    /**
    * 等级描述
    */
    private String vName;

    /**
    * 折扣
    */
    private Double vCount;

    public Integer getvId() {
        return vId;
    }

    public void setvId(Integer vId) {
        this.vId = vId;
    }

    public String getvName() {
        return vName;
    }

    public void setvName(String vName) {
        this.vName = vName;
    }

    public Double getvCount() {
        return vCount;
    }

    public void setvCount(Double vCount) {
        this.vCount = vCount;
    }
}