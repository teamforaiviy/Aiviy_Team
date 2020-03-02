package com.kgc.exam.controller;

import com.kgc.exam.entity.Shopping;
import com.kgc.exam.service.ShoppingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("shop")
@ResponseBody
public class ShoppingController {
    @Autowired
    private ShoppingService shoppingService;
    @RequestMapping("add")
    public Boolean add(@RequestParam("gId") Integer gId, @RequestParam("sPrice") Double sPrice, @RequestParam("sNum") Integer sNum, @RequestParam("sName") String sName,@RequestParam("uId") Integer uId){
        Shopping shopping = new Shopping();
        shopping.setgId(gId);
        shopping.setsPrice(sPrice);
        shopping.setsNum(sNum);
        shopping.setsName(sName);
        shopping.setuId(uId);
        return shoppingService.add(shopping);

    }
    @RequestMapping("query")
    public List<Shopping> query(@RequestParam("gid") Integer gId){
        return shoppingService.query(gId);

    }
    @RequestMapping("update")
    public Boolean update(@RequestParam("gId") Integer gId,@RequestParam("sNum") Integer sNum,@RequestParam("sTotal") Double sTotal){
        Shopping shopping = new Shopping();
        shopping.setgId(gId);
        shopping.setsNum(sNum);
        shopping.setsTotal(sTotal);
        return shoppingService.update(shopping);
    }
    @RequestMapping("queryId")
    public List<Shopping> querybyuId(@RequestParam("uid")Integer uId) {
        return shoppingService.querybyuId(uId);
    }
    @RequestMapping("del")
    public Integer del(@RequestParam("gid")Integer gId) {
        return shoppingService.del(gId);
    }
    @RequestMapping("queryTotal")
    public Double queryTotal(@RequestParam("uId") Integer uId){
        List<Shopping> totals=shoppingService.querybyuId(uId);
        Double totalPrice=0.0;
        for (Shopping shopping:totals){
            if(shopping.getsStatus()==1){
                totalPrice += shopping.getsTotal();
            }
        }
        return totalPrice;

    }
    @RequestMapping("updateId")
    public Boolean updateuId(@RequestParam("uId") Integer uId,@RequestParam("sNum") Integer sNum,@RequestParam("sTotal") Double sTotal){
        Shopping shopping = new Shopping();
        shopping.setsNum(sNum);
        shopping.setsTotal(sTotal);
        shopping.setuId(uId);
        return shoppingService.updateuId(shopping);
    }

    /*
    * 更改购物车中商品状态
    * !!!!!!!!!!!
    * 注意：暂时将用户定死，之后将从session中获取用户
    * */
    @RequestMapping("updateShoppingCarStatus")
    public Boolean updateShoppingCarStatus(Integer gId,Integer sStatus){
        if(sStatus==0){
            return shoppingService.updateByUserIdAndGId(1,gId,1);
        }else {
            return shoppingService.updateByUserIdAndGId(1,gId,0);
        }

    }
}
