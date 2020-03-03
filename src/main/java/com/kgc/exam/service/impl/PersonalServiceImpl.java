package com.kgc.exam.service.impl;

import com.kgc.exam.entity.Orders;
import com.kgc.exam.entity.Address;
import com.kgc.exam.entity.User;
import com.kgc.exam.mapper.PersonalMapper;
import com.kgc.exam.service.PersonalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PersonalServiceImpl implements PersonalService {

    @Autowired
    private PersonalMapper personalMapper;

    @Override
    public List<Orders> queryOrder(Integer userId) {
        return personalMapper.queryOrder(userId);
    }

    @Override
    public Boolean updateAddress(Address address) {
        return personalMapper.updateAddress(address)==1;
    }

    @Override
    public Address queryAddress(Integer userId) {
        return personalMapper.queryAddress(userId);
    }

    @Override
    public Boolean updateUser(User user) {
        return personalMapper.updateUser(user)==1;
    }


}
