package com.kgc.exam.mapper;
import org.apache.ibatis.annotations.Param;
import java.util.List;

import com.kgc.exam.entity.Order;

public interface OrderMapper {
    int deleteByPrimaryKey(Integer oId);

    int insert(Order record);

    int insertSelective(Order record);

    Order selectByPrimaryKey(Integer oId);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKey(Order record);

    List<Order> queryAllByUserId(@Param("userId")Integer userId);

    List<Order> queryAllByONo(@Param("oNo")String oNo);


}