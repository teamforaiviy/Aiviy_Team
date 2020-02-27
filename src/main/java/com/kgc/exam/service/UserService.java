package com.kgc.exam.service;

import com.kgc.exam.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserService {

    List<User> queryUser();

    Boolean insert(User user);

    Boolean add(User user);

    User login(String userName);
}
