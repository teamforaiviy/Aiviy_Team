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
    public Boolean addGoods(Goods goods) {
        return goodsMapper.insertSelective(goods)==1;
    }

    @Override
    public List<Goods> queryAllGoods() {
        return goodsMapper.queryAll();
    }

    @Override
    public Goods queryGoodByGname(String gName) {
        return goodsMapper.queryAllByGName(gName);
    }

    @Override
    public Goods selectByPrimaryKey(Integer gId) {
        return goodsMapper.selectByPrimaryKey(gId);
    }

    @Override
    public List<Goods> queryNew(){
        return goodsMapper.queryNew();

    }
}
