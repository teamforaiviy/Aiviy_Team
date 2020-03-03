package com.kgc.exam.mapper;

import com.kgc.exam.entity.Orders;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PersonalMapper {

    List<Orders> queryOrder(@Param("userId") Integer userId);

}
