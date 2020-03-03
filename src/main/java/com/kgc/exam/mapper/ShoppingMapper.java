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
    * 逻辑:哪个用户的哪些商品已经生成订单了
    * 更改购物车中数据状态s_status：0->1
    * 表示以生成订单，为删除购物车中数据做准备
    * */
    Integer updateSStatusByUserIdAndGId(@Param("userId") Integer userId,@Param("gId") Integer gId,@Param("sStatus") Integer sStatus);

    /*
    * 通过会员id以及sStatus得出数据数目
    * */
    Integer countBySStatusAndUserId(@Param("sStatus")Integer sStatus,@Param("userId")Integer userId);

    /*
    * 通过会员id以及商品id得出购物车数据数目
    * */
    Integer countByUIdAndGId(@Param("userId")Integer userId,@Param("gId")Integer gId);

    /*
    * 通过用户id以及购物车状态查询购物车数据
    * */
    List<Shopping> queryByUserIdAndSStatus(@Param("userId") Integer userId,@Param("sStatus") Integer sStatus);

    /*
    * 根据用户id以及商品id选择性修改购物车数据
    * */
    Integer updateByUserIdAndGId(@Param("shopping") Shopping shopping);
}
