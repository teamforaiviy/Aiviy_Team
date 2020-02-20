package com.kgc.exam.mapper;

import com.kgc.exam.entity.Member;

public interface MemberMapper {
    int deleteByPrimaryKey(Integer vId);

    int insert(Member record);

    int insertSelective(Member record);

    Member selectByPrimaryKey(Integer vId);

    int updateByPrimaryKeySelective(Member record);

    int updateByPrimaryKey(Member record);
}