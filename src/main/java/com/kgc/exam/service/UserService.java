package com.kgc.exam.service;

import com.kgc.exam.entity.User;

import java.util.List;

public interface UserService {

    List<User> queryUser();

    Boolean insert(User user);

}
