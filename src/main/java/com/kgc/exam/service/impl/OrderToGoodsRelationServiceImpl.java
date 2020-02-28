package com.kgc.exam.service.impl;

import com.kgc.exam.entity.Goods;
import com.kgc.exam.entity.OrderToGoodsRelation;
import com.kgc.exam.mapper.OrderToGoodsRelationMapper;
import com.kgc.exam.service.OrderToGoodsRelationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderToGoodsRelationServiceImpl implements OrderToGoodsRelationService {

    @Autowired
    private OrderToGoodsRelationMapper orderToGoodsRelationMapper;


    @Override
    public Boolean addOrderToGoodsRelation(List<Goods> goods,String oNo) {
        OrderToGoodsRelation orderToGoodsRelation = null;
        for(Goods goods1:goods){
            orderToGoodsRelation = new OrderToGoodsRelation();
            orderToGoodsRelation.setoNo(oNo);
            orderToGoodsRelation.setgId(goods1.getgId());
            orderToGoodsRelationMapper.insertSelective(orderToGoodsRelation);
        }
        /*
        * 统计需要插入数据条数
        * */
        Integer num = goods.size();
        /*
        * 比对是否插入同样条数的数据数据，并返回结果
        * */
        return num==orderToGoodsRelationMapper.countByONo(oNo);
    }
}
