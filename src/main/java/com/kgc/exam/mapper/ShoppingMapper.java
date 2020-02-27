package com.kgc.exam.mapper;

import com.kgc.exam.entity.Shopping;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ShoppingMapper {
    Integer add(@Param("shopping") Shopping shopping);
    List<Shopping> query(@Param("gId") Integer gId);
    List<Shopping> querybyuId(@Param("uId") Integer uId);
    Integer update(@Param("shopping") Shopping shopping);

}
