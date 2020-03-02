package com.kgc.exam.controller;

import com.kgc.exam.entity.Address;
import com.kgc.exam.service.BillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("bill")
@ResponseBody
public class BillController {
    @Autowired
    private BillService billService;
    @RequestMapping("queryaddress")
    public Address queryaddress(@RequestParam("uId") Integer uId){
        return billService.queryaddress(uId);
    }
}
