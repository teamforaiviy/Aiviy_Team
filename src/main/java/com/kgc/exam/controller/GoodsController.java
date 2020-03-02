package com.kgc.exam.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.kgc.exam.entity.Address;
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

    @RequestMapping("/queryGood")
    public PageInfo queryGood(@RequestParam(value = "pn",defaultValue = "1") Integer pn,
                                 @RequestParam(value = "ps",defaultValue = "5") Integer ps) {
        PageHelper.startPage(pn,ps);
        List<Goods> goods = goodsService.queryAllGoods();
        PageInfo pageInfo = new PageInfo(goods,3);
        return  pageInfo;
    }

    @RequestMapping("/queryGoodByGname")
    public Goods queryGoodByGname(@RequestParam("gName") String gName) {
        return goodsService.queryGoodByGname(gName);
    }

    @RequestMapping("/queryByName")
    public List<Goods> queryByName(@RequestParam("gName") String gName) {
        return goodsService.queryByName(gName);
    }

    @RequestMapping("/select")
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

    @RequestMapping("/del")
    public Boolean del(@RequestParam("gId") Integer gId) {
        return goodsService.del(gId);
    }
}
