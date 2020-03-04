package com.kgc.exam.service;

import com.kgc.exam.entity.Address;

import java.util.List;

public interface AddressService {

    Boolean insert(Address address);

    List<Address> queryAddress(String userName);

    Address queryAllByUserId(Integer userId);
}
