package com.kgc.exam.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.kgc.exam.entity.User;
import com.kgc.exam.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/queryUser")
    @ResponseBody
    public PageInfo queryAll(@RequestParam(value = "pn",defaultValue = "1") Integer pn,
                              @RequestParam(value = "ps",defaultValue = "5") Integer ps) {
        PageHelper.startPage(pn,ps);
        List<User> users = userService.queryAll();
        PageInfo pageInfo = new PageInfo(users,3);
        return pageInfo;
    }

    @RequestMapping("/queryById")
    @ResponseBody
    public User queryById(@RequestParam("userId") Integer userId) {
        return userService.queryById(userId);
    }

    @RequestMapping("/insert")
    @ResponseBody
    public Boolean insert(User user) {
        return userService.insert(user);
    }

    @RequestMapping("/update")
    @ResponseBody
    public Boolean update(User user) {
        return userService.update(user);
    }
  
    @RequestMapping("/del")
    @ResponseBody
    public Boolean deleteByUserId(@RequestParam("userId") Integer userId) {
        return userService.deleteByUserId(userId);
    }

    @RequestMapping("add")
    @ResponseBody
    public Boolean add(@RequestParam("user") User user){
        return userService.add(user);
    }

    @RequestMapping("login")
    @ResponseBody
    public Integer login(@RequestParam("userName") String userName, @RequestParam("password") String password,
                      HttpServletRequest request){
        User user = userService.login(userName);
        if(user==null){
            return 1;
        }else if(!password.equals(user.getUserPwd())){
            return 2;
        }else {
            HttpSession session = request.getSession();
            session.setAttribute("user",user);
            return 0;
        }
    }

    @RequestMapping("exit")
    public String exit(HttpServletRequest request){
        request.getSession().invalidate();
        return "redirect:/index.jsp";
    }

}
