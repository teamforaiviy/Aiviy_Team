package com.kgc.exam.service;

import com.kgc.exam.entity.User;

public interface UserService {

    User login(Integer id);

    Integer add(User user);

}
