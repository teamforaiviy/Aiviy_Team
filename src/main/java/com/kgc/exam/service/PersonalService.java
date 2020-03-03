package com.kgc.exam.service;

import com.kgc.exam.entity.Orders;

import java.util.List;

public interface PersonalService {

    List<Orders> queryOrder(Integer userId);

}
