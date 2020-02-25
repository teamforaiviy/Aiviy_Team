package com.kgc.exam.mapper;
import org.apache.ibatis.annotations.Param;
import java.util.List;

import com.kgc.exam.entity.Goods;

public interface GoodsMapper {
    int deleteByPrimaryKey(Integer gId);

    int insert(Goods record);

    int insertSelective(Goods record);

    Goods selectByPrimaryKey(Integer gId);

    int updateByPrimaryKeySelective(Goods record);

    int updateByPrimaryKey(Goods record);

    List<Goods> queryAll();

    Goods queryAllByGName(@Param("gName")String gName);

    List<Goods> queryNew();

    List<Goods> queryImgAndGoods(Integer gId);

}