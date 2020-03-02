package com.kgc.exam.controller;

import com.kgc.exam.entity.Order;
import com.kgc.exam.service.PersonalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@ResponseBody
@RequestMapping("/Personal")
public class PersonalController {

    @Autowired
    private PersonalService personalService;

    @RequestMapping("order")
    public List<Order> queryOrder(@RequestParam("userId") Integer userId){
        return personalService.queryOrder(userId);
    }


}
