package com.kgc.exam.service.impl;

import com.kgc.exam.entity.Order;
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
    public List<Order> queryOrder(Integer userId) {
        return personalMapper.queryOrder(userId);
    }
}
