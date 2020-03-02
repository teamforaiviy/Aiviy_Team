package com.kgc.exam.service.impl;

import com.kgc.exam.entity.Goods;
import com.kgc.exam.entity.Shopping;
import com.kgc.exam.mapper.GoodsMapper;
import com.kgc.exam.mapper.ShoppingMapper;
import com.kgc.exam.service.ShoppingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ShoppingServiceImpl implements ShoppingService {
    @Autowired
    private ShoppingMapper shoppingMapper;

    @Override
    public Boolean add(Shopping shopping) {
        List<Shopping> shoppings=shoppingMapper.query(shopping.getgId());
        if (shoppings.size() == 0){
            return shoppingMapper.add(shopping)==1;
        }else{
            return shoppingMapper.update(shopping)==1;

        }

    }

    @Override
    public List<Shopping> query(Integer gId) {
        return shoppingMapper.query(gId);
    }

    @Override
    public Boolean update(Shopping shopping) {
        return shoppingMapper.update(shopping)==1;
    }

    @Override
    public List<Shopping> querybyuId(Integer uId) {
        return shoppingMapper.querybyuId(uId);
    }

    @Override
    public Integer del(Integer gId) {
        return shoppingMapper.del(gId);
    }

    @Override
    public Boolean updateuId(Shopping shopping) {
        return shoppingMapper.updateuId(shopping)==1;
    }

    @Override
    public Boolean updateByUserIdAndGId(Integer userId, Integer gId, Integer sStatus) {
        return shoppingMapper.updateByUserIdAndGId(userId,gId,sStatus)==1;
    }


}
