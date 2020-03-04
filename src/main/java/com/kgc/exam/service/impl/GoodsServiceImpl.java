package com.kgc.exam.service.impl;

import com.kgc.exam.entity.Goods;
import com.kgc.exam.mapper.GoodsMapper;
import com.kgc.exam.mapper.ImageMapper;
import com.kgc.exam.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodsServiceImpl implements GoodsService {

    @Autowired
    private GoodsMapper goodsMapper;
    @Autowired
    private ImageMapper imageMapper;

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
    public List<Goods> queryByName(String gName) {
        return goodsMapper.queryByName(gName);
    }

    @Override
    public Goods selectByPrimaryKey(Integer gId) {
        return goodsMapper.selectByPrimaryKey(gId);
    }

    @Override
    public Boolean updateByPrimaryKeySelective(Goods goods) {
        return goodsMapper.updateByPrimaryKeySelective(goods)==1;
    }

    @Override
    public List<Goods> queryNew(){
        return goodsMapper.queryNew();

    }

    @Override
    public List<Goods> queryGoodsWithImage() {
        return goodsMapper.queryGoodsWithImage();
    }

    @Override
    public Boolean del(Integer gId) {
        imageMapper.deleteByGId(gId);
        return goodsMapper.del(gId)==1;
    }

    @Override
    public List<Goods> queryGoodsWithImageByCountStatus(Integer countStatus) {
        return goodsMapper.queryGoodsWithImageByCountStatus(countStatus);
    }

}
