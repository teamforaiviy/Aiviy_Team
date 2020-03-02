package com.kgc.exam.service;

import com.kgc.exam.entity.Shopping;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ShoppingService {
    Boolean add(Shopping shopping);
    List<Shopping> query(Integer gId);
    Boolean update(Shopping shopping);
    List<Shopping> querybyuId(Integer uId);
    Integer del(Integer gId);
    Boolean updateuId(Shopping shopping);

    Boolean updateByUserIdAndGId(Integer userId,Integer gId,Integer sStatus);
    /*
    * 删除已生成订单
    * */
    Boolean deleteBySStatusAndUserId(Integer sStatus,Integer UserId);

    /*
    * 根据用户id以及购物车状态获取购物车数据
    * */
    List<Shopping> queryByUserIdAndSStatus(Integer userId,Integer sStatus);
}
