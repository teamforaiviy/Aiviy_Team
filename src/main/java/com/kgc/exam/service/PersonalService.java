package com.kgc.exam.service;

import com.kgc.exam.entity.Address;
import com.kgc.exam.entity.Order;
import com.kgc.exam.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PersonalService {

    List<Order> queryOrder(Integer userId);

    Boolean updateAddress(Address address);

    Address queryAddress(Integer userId);

    Boolean updateUser(User user);
}
