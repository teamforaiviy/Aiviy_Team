package com.kgc.exam.mapper;

import com.kgc.exam.entity.Shopping;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ShoppingMapper {
    Integer add(@Param("shopping") Shopping shopping);
    List<Shopping> query(@Param("gId") Integer gId);
    List<Shopping> querybyuId(@Param("uId") Integer uId);
    Integer update(@Param("shopping") Shopping shopping);
    Integer del(@Param("gId") Integer gId);
    Integer updateuId(@Param("shopping") Shopping shopping);

    /*
    * 通过用户id以及购买状态删除购物车表中数据
    * */
    Integer deleteBySStatusAndUserId(@Param("sStatus") Integer sStatus,@Param("userId") Integer userId);

    /*
    * 更改购物车中数据状态s_status：0->1
    * 表示以生成订单，为删除购物车中数据做准备
    * */
    Integer updateByUId(@Param("userId") Integer userId);
}
