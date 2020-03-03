package com.kgc.exam.service;

import com.kgc.exam.entity.Address;
import com.kgc.exam.entity.Shopping;

public interface BillService {
    Address queryaddress(Integer uId);
    Integer add(Address address);
}
