package com.kgc.exam.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.kgc.exam.entity.User;
import com.kgc.exam.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/user")
@ResponseBody
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/queryUser")
    public PageInfo queryUser(@RequestParam(value = "pn",defaultValue = "1") Integer pn,
                              @RequestParam(value = "ps",defaultValue = "5") Integer ps) {
        PageHelper.startPage(pn,ps);
        List<User> users = userService.queryUser();
        PageInfo pageInfo = new PageInfo(users,3);
        return pageInfo;
    }

    @RequestMapping("/insert")
    public Boolean insert(User user) {
        return userService.insert(user);
    }

}
