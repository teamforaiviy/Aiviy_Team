package com.kgc.exam.mapper;
import org.apache.ibatis.annotations.Param;
import java.util.List;

import com.kgc.exam.entity.Goods;

public interface GoodsMapper {

    /**
     * 根据gId删除商品
     * @param gId
     * @return
     */
    int del(@Param("gId") Integer gId);

    int insert(Goods record);

    int insertSelective(Goods record);

    /**
     * 通过id查询商品
     * @param gId
     * @return
     */
    Goods selectByPrimaryKey(Integer gId);

    /**
     * 通过id修改商品
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(Goods record);

    int updateByPrimaryKey(Goods record);

    List<Goods> queryAll();

    Goods queryAllByGName(@Param("gName")String gName);

    List<Goods> queryByName(@Param("gName")String gName);

    List<Goods> queryNew();

    List<Goods> queryGoodsWithImage(@Param("countStatus") Integer countStatus);

    List<Goods> queryGoodsWithImageByCountStatus(@Param("countStatus") Integer countStatus);

}