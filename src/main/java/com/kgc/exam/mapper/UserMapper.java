package com.kgc.exam.mapper;

import com.kgc.exam.entity.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    int deleteByPrimaryKey(@Param("userId") Integer userId, @Param("userName") String userName);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(@Param("userId") Integer userId, @Param("userName") String userName);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    //登录
    User login(@Param("id") Integer id);

    //注册
    Integer add(@Param("user") User user);

}