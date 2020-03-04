package com.kgc.exam.service;

import com.kgc.exam.entity.Orders;

import java.util.List;

public interface OrderService {
    /*
    * 在订单表中插入数据
    * */
    Integer insertIntoOrder(Orders order);
    /*
    * 修改订单状态，由未支付更改为已支付
    * */
    Boolean updateOStateByONo(String oNo);

    List<Orders> queryOrders(String oNo);
}
