package com.kgc.exam.service;

import com.kgc.exam.entity.Goods;

import java.util.List;

public interface GoodsService {
    /*
    * 添加商品
    * */
    Boolean addGoods(Goods goods);

    /*
    * 查询全部商品
    * */
    List<Goods> queryAllGoods();

    /*
    * 根据名字查单个商品
    * */
    Goods queryGoodByGname(String gName);
}
