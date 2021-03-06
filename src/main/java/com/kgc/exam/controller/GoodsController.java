package com.kgc.exam.controller;

import com.github.pagehelper.Page;
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
                                 @RequestParam(value = "ps",defaultValue = "6") Integer ps) {
        PageHelper.startPage(pn,ps);
        List<Goods> goods = goodsService.queryAllGoods();
        PageInfo pageInfo = new PageInfo(goods,3);
        return pageInfo;
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

    @RequestMapping("/update")
    public Boolean updateByPrimaryKeySelective(Goods goods) {
        return goodsService.updateByPrimaryKeySelective(goods);
    }

    @RequestMapping("/queryNew")
    public List<Goods> queryNew() {
        return goodsService.queryNew();
    }

    @RequestMapping("/queryGoodsWithImages")
    public List<Goods> queryGoodsWithImages(){
        return goodsService.queryGoodsWithImage(0);
    }

    @RequestMapping("quertGoodsWithImagesByCount")
    public  PageInfo<Goods> quertGoodsWithImagesByCount(Integer pageNum,Integer pageSize){
        pageNum = pageNum==null?1:pageNum;
        pageSize = pageSize==null?16:pageSize;
        Page<Goods> page = null;
        PageInfo<Goods> pageInfo = null;
        page = PageHelper.startPage(pageNum,pageSize);
        pageInfo = new PageInfo<>(goodsService.queryGoodsWithImage(0));
        return pageInfo;
    }


    @RequestMapping("/queryAllOrBySearch")
    public PageInfo queryAllOrBySearch(@RequestParam(value = "pn",defaultValue = "1") Integer pn,
                                       @RequestParam(value = "ps",defaultValue = "12") Integer ps,
                                       @RequestParam("gName")String gName) {
        PageHelper.startPage(pn,ps);
        List<Goods> goods = goodsService.queryByName(gName);
        PageInfo pageInfo = new PageInfo(goods,3);
        return pageInfo;
    }


    @RequestMapping("/del")
    public Boolean del(@RequestParam("gId") Integer gId) {
        return goodsService.del(gId);
    }
}
