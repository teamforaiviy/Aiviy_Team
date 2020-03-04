package com.kgc.exam.mapper;
import org.apache.ibatis.annotations.Param;

import com.kgc.exam.entity.OrderToGoodsRelation;

import java.util.List;

public interface OrderToGoodsRelationMapper {
    int insert(OrderToGoodsRelation record);

    int insertSelective(OrderToGoodsRelation record);

    Integer countByONo(@Param("oNo")String oNo);

    List<OrderToGoodsRelation> queryOrderWithGood(@Param("oNo") String oNo);
}