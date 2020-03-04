package com.kgc.exam.service.impl;

import com.kgc.exam.entity.Address;
import com.kgc.exam.mapper.AddressMapper;
import com.kgc.exam.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AddressServiceImpl implements AddressService {

    @Autowired
    private AddressMapper addressMapper;

    @Override
    public Boolean insert(Address address) {
        return addressMapper.insert(address)==1;
    }

    @Override
    public List<Address> queryAddress(String userName) {
        return addressMapper.queryAddress(userName);
    }

    @Override
    public Address queryAllByUserId(Integer userId) {
        return addressMapper.queryAllByUserId(userId);
    }

    @Override
    public Boolean deleteByPrimaryKey(Integer adId) {
        return addressMapper.deleteByPrimaryKey(adId)==1;
    }

}
