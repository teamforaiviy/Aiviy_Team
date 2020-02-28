package com.kgc.exam.service;

import com.kgc.exam.entity.Goods;

import java.util.List;

public interface OrderToGoodsRelationService {
    /*
    * 向商品-订单号关系表中插入数据
    * 参数goods需要插入的所有商品
    * 参数oNo插入数据的订单号
    * 插入成功则返回true
    * */
    Boolean addOrderToGoodsRelation(List<Goods> goods,String oNo);
}
