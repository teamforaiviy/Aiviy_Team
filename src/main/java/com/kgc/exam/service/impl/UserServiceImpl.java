package com.kgc.exam.service.impl;

import com.kgc.exam.entity.User;
import com.kgc.exam.mapper.UserMapper;
import com.kgc.exam.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public User login(Integer id) {
        return userMapper.login(id);
    }

    @Override
    public Integer add(User user) {
        return userMapper.add(user);
    }

}
