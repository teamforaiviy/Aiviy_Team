package com.kgc.exam.mapper;

import com.kgc.exam.entity.Order;
import com.kgc.exam.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PersonalMapper {

    List<Order> queryOrder(@Param("userId") Integer userId);

}
