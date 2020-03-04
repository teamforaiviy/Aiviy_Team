package com.kgc.exam.mapper;
import org.apache.ibatis.annotations.Param;

import com.kgc.exam.entity.Orders;

import java.util.List;

public interface OrdersMapper {
    int deleteByPrimaryKey(Integer oId);

    int insert(Orders record);

    int insertSelective(Orders record);

    Orders selectByPrimaryKey(Integer oId);

    int updateByPrimaryKeySelective(Orders record);

    int updateByPrimaryKey(Orders record);

    Orders queryAllByONo(@Param("oNo")String oNo);

    /**
     * 通过订单号查询所有订单
     * @param oNo
     * @return
     */
    List<Orders> queryOrders(@Param("oNo")String oNo);
}