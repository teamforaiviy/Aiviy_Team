package com.kgc.exam.controller;

import com.kgc.exam.entity.Address;
import com.kgc.exam.entity.User;
import com.kgc.exam.service.AddressService;
import com.kgc.exam.service.BillService;
import com.kgc.exam.service.UserService;
import com.sun.org.apache.xpath.internal.operations.Bool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("bill")
@ResponseBody
public class BillController {
    @Autowired
    private BillService billService;

    @Autowired
    private AddressService addressService;

    @Autowired
    private UserService userService;
    @RequestMapping("queryaddress")
    public Address queryaddress(@RequestParam("uId") Integer uId){
        Address address =  addressService.queryAllByUserId(uId);
        return address;
    }

    @RequestMapping("queryIfAddressIsNull")
    public Boolean queryIfAddressIsNull(HttpServletRequest request){
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");
        Address address =  addressService.queryAllByUserId(user.getUserId());
        if (address==null){
            return false;
        }else {
            return true;
        }
    }

    @RequestMapping("addAddressWhenNull")
    public Boolean addAddressWhenNull(String adSname,String adName,String adAddress,String adPhone,String email,HttpServletRequest request){
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");
        if(user.getUserMail()==""&&user.getUserMail()==null){
            user.setUserMail(email);
            userService.update(user);
        }
        if(addressService.queryAllByUserId(user.getUserId())!=null){
            return true;
        }else {
            Address address = new Address();
            address.setAdSname(adSname);
            address.setAdName(adName);
            address.setAdAddress(adAddress);
            address.setAdPhone(adPhone);
            address.setUserId(user.getUserId());
            return addressService.insert(address);
        }
    }

}
