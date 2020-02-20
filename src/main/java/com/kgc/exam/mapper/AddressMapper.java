package com.kgc.exam.mapper;

import com.kgc.exam.entity.Address;

public interface AddressMapper {
    int deleteByPrimaryKey(Integer adId);

    int insert(Address record);

    int insertSelective(Address record);

    Address selectByPrimaryKey(Integer adId);

    int updateByPrimaryKeySelective(Address record);

    int updateByPrimaryKey(Address record);
}