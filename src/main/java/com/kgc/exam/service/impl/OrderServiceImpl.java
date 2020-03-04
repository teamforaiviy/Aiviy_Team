package com.kgc.exam.service.impl;

import com.kgc.exam.entity.Orders;
import com.kgc.exam.mapper.OrderToGoodsRelationMapper;
import com.kgc.exam.mapper.OrdersMapper;
import com.kgc.exam.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrdersMapper orderMapper;
    @Autowired
    private OrderToGoodsRelationMapper orderToGoodsRelationMapper;
    @Override
    public Integer insertIntoOrder(Orders order) {
        return orderMapper.insert(order);
    }

    @Override
    public Boolean updateOStateByONo(String oNo) {
        Orders order = orderMapper.queryAllByONo(oNo);
        order.setoState(1);
        return orderMapper.updateByPrimaryKey(order)==1;
    }

    @Override
    public List<Orders> queryOrders(String oNo) {
        return orderMapper.queryOrders(oNo);
    }

    @Override
    public Boolean del(String oNo) {
        orderToGoodsRelationMapper.del(oNo);
        return orderMapper.del(oNo)==1;
    }
}
