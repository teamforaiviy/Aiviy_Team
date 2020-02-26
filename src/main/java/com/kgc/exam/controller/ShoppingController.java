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
    public Boolean add(@RequestParam("gId") Integer gId, @RequestParam("sPrice") Double sPrice, @RequestParam("sNum") Integer sNum, @RequestParam("sName") String sName){



        Shopping shopping = new Shopping();
        shopping.setgId(gId);
        shopping.setsPrice(sPrice);
        shopping.setsNum(sNum);
        shopping.setsName(sName);
        return shoppingService.add(shopping);

    }
    @RequestMapping("query")
    public List<Shopping> query(@RequestParam("gid") Integer gId){
        return shoppingService.query(gId);

    }
    @RequestMapping("update")
    public Boolean update(@RequestParam("gId") Integer gId,@RequestParam("sNum") Integer sNum){
        Shopping shopping = new Shopping();
        shopping.setgId(gId);
        shopping.setsNum(sNum);
        return shoppingService.update(shopping);
    }
}
