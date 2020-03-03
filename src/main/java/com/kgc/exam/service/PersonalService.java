package com.kgc.exam.service;

import com.kgc.exam.entity.Orders;
import com.kgc.exam.entity.Address;
import com.kgc.exam.entity.User;

import java.util.List;

public interface PersonalService {

    List<Orders> queryOrder(Integer userId);

    Boolean updateAddress(Address address);

    Address queryAddress(Integer userId);

    Boolean updateUser(User user);
}
