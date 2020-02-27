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

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/queryUser")
    @ResponseBody
    public PageInfo queryUser(@RequestParam(value = "pn",defaultValue = "1") Integer pn,
                              @RequestParam(value = "ps",defaultValue = "5") Integer ps) {
        PageHelper.startPage(pn,ps);
        List<User> users = userService.queryUser();
        PageInfo pageInfo = new PageInfo(users,3);
        return pageInfo;
    }

    @RequestMapping("/listUser")
    public String listUser(Model model) {
        List<User> users = userService.queryUser();
        model.addAttribute("users",users);
        return "redirect:/admin.jsp";
    }

    @RequestMapping("/insert")
    @ResponseBody
    public Boolean insert(User user) {
        return userService.insert(user);
    }

    @RequestMapping("add")
    @ResponseBody
    public Boolean add(@RequestParam("user") User user){
        return userService.add(user);
    }

    @RequestMapping("login")
    @ResponseBody
    public User login(@RequestParam("userName") String userName){
        return userService.login(userName);
    }
}
