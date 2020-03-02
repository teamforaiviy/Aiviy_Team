package com.kgc.exam.mapper;
import org.apache.ibatis.annotations.Param;

import com.kgc.exam.entity.OrderToGoodsRelation;

public interface OrderToGoodsRelationMapper {
    int insert(OrderToGoodsRelation record);

    int insertSelective(OrderToGoodsRelation record);

    Integer countByONo(@Param("oNo")String oNo);

}