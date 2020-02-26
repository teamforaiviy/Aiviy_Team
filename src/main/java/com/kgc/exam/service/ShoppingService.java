package com.kgc.exam.service;

import com.kgc.exam.entity.Shopping;

import java.util.List;

public interface ShoppingService {
    Boolean add(Shopping shopping);
    List<Shopping> query(Integer gId);
    Boolean update(Shopping shopping);
}
