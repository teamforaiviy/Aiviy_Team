package com.kgc.exam.service.impl;

import com.kgc.exam.entity.Order;
import com.kgc.exam.mapper.OrderMapper;
import com.kgc.exam.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderMapper orderMapper;
    @Override
    public Integer insertIntoOrder(Order order) {
        return orderMapper.insertSelective(order);
    }
}
