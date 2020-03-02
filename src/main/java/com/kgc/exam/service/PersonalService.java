package com.kgc.exam.service;

import com.kgc.exam.entity.Order;

import java.util.List;

public interface PersonalService {

    List<Order> queryOrder(Integer userId);

}
