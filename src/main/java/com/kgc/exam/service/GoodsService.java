package com.kgc.exam.service;

import com.kgc.exam.entity.Goods;

import java.util.List;

public interface GoodsService {

    List<Goods> queryGoods(String gName);

}
