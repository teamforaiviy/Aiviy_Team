package com.kgc.exam.mapper;

import com.kgc.exam.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    int deleteByPrimaryKey(@Param("userId") Integer userId, @Param("userName") String userName);

    int insert(@Param("user") User user);

    int insertSelective(@Param("user") User user);

    User selectByPrimaryKey(@Param("userId") Integer userId, @Param("userName") String userName);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    List<User> queryUser();

    Integer add(@Param("user") User user);

    User login(@Param("userName") String userName);
}