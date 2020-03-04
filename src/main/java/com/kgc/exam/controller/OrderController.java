package com.kgc.exam.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.kgc.exam.entity.Orders;
import com.kgc.exam.entity.User;
import com.kgc.exam.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("order")
@ResponseBody
public class OrderController {

    @Autowired
    private OrderService orderService;

    @RequestMapping("/queryOrders")
    public PageInfo queryOrders(@RequestParam("oNo") String oNo,
                                    @RequestParam(value = "pn",defaultValue = "1") Integer pn,
                                    @RequestParam(value = "ps",defaultValue = "5") Integer ps) {
        PageHelper.startPage(pn,ps);
        List<Orders> orders = orderService.queryOrders(oNo);
        PageInfo pageInfo = new PageInfo(orders,3);
        return pageInfo;
    }

}
