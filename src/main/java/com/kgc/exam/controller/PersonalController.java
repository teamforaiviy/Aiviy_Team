package com.kgc.exam.controller;

import com.kgc.exam.entity.Address;
import com.kgc.exam.entity.Order;
import com.kgc.exam.entity.User;
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

    @RequestMapping("/updateAddress")
    public Boolean updateAddress(Address address){
        return personalService.updateAddress(address);
    }

    @RequestMapping("/queryAddress")
    public Address queryAddress(@RequestParam("userId") Integer userId){
        return personalService.queryAddress(userId);
    }

    @RequestMapping("/updateUser")
    public Boolean updateUser(User user){
        return personalService.updateUser(user);
    }

}
