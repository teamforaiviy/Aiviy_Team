package com.kgc.exam.service;

import com.kgc.exam.entity.Order;

public interface OrderService {
    /*
    * 在订单表中插入数据
    * */
    Integer insertIntoOrder(Order order);
}
