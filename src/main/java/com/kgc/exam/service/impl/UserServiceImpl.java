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
    public List<User> queryAll() {
        return userMapper.queryAll();
    }

    @Override
    public User queryById(Integer userId) {
        return userMapper.queryAllByUserId(userId);
    }

    @Override
    public Boolean insert(User user) {
        return userMapper.insert(user)==1;
    }

    @Override
    public Boolean update(User user) {
        return userMapper.updateByPrimaryKeySelective(user)==1;
    }

    @Override
    public Boolean deleteByUserId(Integer userId) {
        return userMapper.deleteByUserId(userId)==1;
    }
  
    @Override
    public Boolean add(User user) {
        return userMapper.insertSelective(user)==1;
    }

    @Override
    public User login(String userName) {
        return userMapper.queryAllByUserName(userName);
    }

}
