package com.kgc.exam.mapper;

import com.kgc.exam.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    int deleteByUserId(@Param("userId") Integer userId);

    int insert(@Param("user") User user);

    int insertSelective(@Param("user") User user);

    User queryById(@Param("userId") Integer userId);

    int updateByPrimaryKeySelective(User user);

    int updateByPrimaryKey(User record);

    List<User> queryUser();

    Integer add(@Param("user") User user);

    User login(@Param("userName") String userName);
}