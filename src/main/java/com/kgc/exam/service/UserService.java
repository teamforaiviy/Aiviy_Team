package com.kgc.exam.service;

import com.kgc.exam.entity.User;

import java.util.List;

public interface UserService {

    List<User> queryAll();

    User queryById(Integer userId);

    Boolean insert(User user);

    Boolean update(User user);

    Boolean deleteByUserId(Integer userId);
  
    Boolean add(User user);

    User login(String userName);

}
