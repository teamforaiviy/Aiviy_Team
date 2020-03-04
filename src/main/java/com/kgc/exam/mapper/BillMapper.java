package com.kgc.exam.mapper;

import com.kgc.exam.entity.Address;
import org.apache.ibatis.annotations.Param;

public interface BillMapper {
    Address queryaddress(@Param("uid") Integer uId);
    Integer add(@Param("address") Address address);
}
