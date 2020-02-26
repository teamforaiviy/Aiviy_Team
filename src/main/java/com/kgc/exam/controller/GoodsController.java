package com.kgc.exam.controller;

import com.kgc.exam.entity.Goods;
import com.kgc.exam.mapper.GoodsMapper;
import com.kgc.exam.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/goods")
@ResponseBody
public class GoodsController {

    @Autowired
    private GoodsService goodsService;

    @RequestMapping("/queryGoods")
    public List<Goods> queryGoods() {
        return goodsService.queryAllGoods();
    }
    @RequestMapping("select")
    public Goods selectByPrimaryKey(@RequestParam("gid") Integer gId){
        return  goodsService.selectByPrimaryKey(gId);
    }

    @RequestMapping("/queryNew")
    public List<Goods> queryNew() {
        return goodsService.queryNew();
    }

    @RequestMapping("/queryGoodsWithImages")
    public List<Goods> queryGoodsWithImages(){
        return goodsService.queryGoodsWithImage();
    }
}
