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
}
