package com.kgc.exam.mapper;

import com.kgc.exam.entity.Address;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AddressMapper {
    int deleteByPrimaryKey(Integer adId);

    int insert(@Param("address") Address address);

    int insertSelective(Address record);

    Address selectByPrimaryKey(Integer adId);

    int updateByPrimaryKeySelective(Address record);

    int updateByPrimaryKey(Address record);

    List<Address> queryAddress(@Param("userName") String userName);

    Address queryAllByUserId(@Param("userId") Integer userId);
}