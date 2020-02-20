package com.kgc.exam.mapper;

import com.kgc.exam.entity.Goods;

public interface GoodsMapper {
    int deleteByPrimaryKey(Integer gId);

    int insert(Goods record);

    int insertSelective(Goods record);

    Goods selectByPrimaryKey(Integer gId);

    int updateByPrimaryKeySelective(Goods record);

    int updateByPrimaryKey(Goods record);
}