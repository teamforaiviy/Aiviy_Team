package com.kgc.exam.service.impl;

import com.kgc.exam.entity.User;
import com.kgc.exam.mapper.UserMapper;
import com.kgc.exam.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public List<User> queryUser() {
        return userMapper.queryUser();
    }

    @Override
    public Boolean insert(User user) {
        return userMapper.insert(user)==1;
    }

    @Override
    public Boolean add(User user) {
        return userMapper.add(user)==1;
    }

    @Override
    public User login(String userName) {
        return userMapper.login(userName);
    }


}
