package com.kgc.exam.service.impl;

import com.kgc.exam.entity.Address;
import com.kgc.exam.mapper.BillMapper;
import com.kgc.exam.service.BillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BillServiceImpl implements BillService {

    @Autowired
    private BillMapper billMapper;
    @Override
    public Integer queryaddress(Integer uId) {
        Address address= billMapper.queryaddress(uId);
        if (address==null){
            return 0;
        }
        return 1;
    }
}
