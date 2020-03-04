package com.kgc.exam.controller;

import com.kgc.exam.entity.Orders;
import com.kgc.exam.entity.Address;
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
    public List<Orders> queryOrder(@RequestParam("userId") Integer userId){
        List<Orders> orders = personalService.queryOrder(userId);
        return orders;
    }

    @RequestMapping("/updateAddress")
    public Boolean updateAddress(@RequestParam("name") String name,@RequestParam("phone") String phone,@RequestParam("address") String address,@RequestParam("userId")Integer userId){
        Address address1 = new Address();
        address1.setAdName(name);
        address1.setAdPhone(phone);
        address1.setAdAddress(address);
        address1.setUserId(userId);
        return personalService.updateAddress(address1);
    }

    @RequestMapping("/queryAddress")
    public Address queryAddress(Integer userId){
        return personalService.queryAddress(userId);
    }

    @RequestMapping("/updateUser")
    public Boolean updateUser(@RequestParam("pwd") String userPwd,@RequestParam("email") String email,@RequestParam("name") String name,@RequestParam("userId") Integer userId){
        User user1 = new User();
        user1.setUserPwd(userPwd);
        user1.setUserMail(email);
        user1.setNickname(name);
        user1.setUserId(userId);
        return personalService.updateUser(user1);
    }

}
