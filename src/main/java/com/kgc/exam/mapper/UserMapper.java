package com.kgc.exam.mapper;

import com.kgc.exam.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    int deleteByPrimaryKey(@Param("userId") Integer userId, @Param("userName") String userName);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(@Param("userId") Integer userId, @Param("userName") String userName);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    List<User> queryAll();

	User queryAllByUserName(@Param("userName")String userName);

	User queryAllByUserId(@Param("userId")Integer userId);

	int deleteByUserId(@Param("userId")Integer userId);


}