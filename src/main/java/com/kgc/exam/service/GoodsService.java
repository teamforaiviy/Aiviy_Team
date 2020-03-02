package com.kgc.exam.service;

import com.kgc.exam.entity.Goods;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GoodsService {
    /*
    * 添加商品
    * */
    Boolean addGoods(Goods goods);

    /*
    * 查询全部商品
    * */
    List<Goods> queryAllGoods();

    /*
    * 根据名字查单个商品
    * */
    Goods queryGoodByGname(String gName);

    /*
     * 模糊查询商品
     * */
    List<Goods> queryByName(String gName);

    /*
     * 根据id查单个商品
     * */
    Goods selectByPrimaryKey(Integer gId);
  
    /*
     * 根据上传时间排序查新品
     * */
    List<Goods> queryNew();

    /*
    * 查询商品以及图片
    * */
    List<Goods> queryGoodsWithImage();

    /**
     * 根据gId删除商品
     * @param gId
     * @return
     */
    Boolean del(Integer gId);

}
