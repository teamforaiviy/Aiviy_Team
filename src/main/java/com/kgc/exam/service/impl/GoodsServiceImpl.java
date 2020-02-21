package com.kgc.exam.service.impl;

import com.kgc.exam.entity.Goods;
import com.kgc.exam.mapper.GoodsMapper;
import com.kgc.exam.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodsServiceImpl implements GoodsService {

    @Autowired
    private GoodsMapper goodsMapper;

    @Override
    public List<Goods> queryGoods(String gName) {
        return goodsMapper.queryGoods(gName);
    }

}
