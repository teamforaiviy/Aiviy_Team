package com.kgc.exam.mapper;

import com.kgc.exam.entity.OrderToGoodsRelation;

public interface OrderToGoodsRelationMapper {
    int insert(OrderToGoodsRelation record);

    int insertSelective(OrderToGoodsRelation record);
}