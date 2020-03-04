package com.kgc.exam.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.kgc.exam.entity.Address;
import com.kgc.exam.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/address")
@ResponseBody
public class AddressController {

    @Autowired
    private AddressService addressService;

    @RequestMapping("insert")
    public Boolean insert(Address address) {
        return addressService.insert(address);
    }

    @RequestMapping("/queryAddress")
    public PageInfo queryAddress(@RequestParam(value = "pn",defaultValue = "1") Integer pn,
                                 @RequestParam(value = "ps",defaultValue = "5") Integer ps,
                                 @RequestParam("userName") String userName) {
        PageHelper.startPage(pn,ps);
        List<Address> addresses = addressService.queryAddress(userName);
        PageInfo pageInfo = new PageInfo(addresses,3);
        return  pageInfo;
    }

    @RequestMapping("/del")
    public Boolean del(@RequestParam("adId") Integer adId) {
        return addressService.deleteByPrimaryKey(adId);
    }
}
