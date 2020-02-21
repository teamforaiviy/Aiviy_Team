package com.kgc.exam.controller;

import com.kgc.exam.entity.User;
import com.kgc.exam.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@ResponseBody
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    public User queryUser(@RequestParam("id") Integer id){
        return userService.login(id);
    }

    public Integer add(@RequestParam("user") User user){
        return userService.add(user);
    }

}
