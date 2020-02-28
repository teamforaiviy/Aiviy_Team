package com.kgc.exam.service.impl;

import com.kgc.exam.entity.Member;
import com.kgc.exam.mapper.MemberMapper;
import com.kgc.exam.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    private MemberMapper memberMapper;

    @Override
    public List<Member> queryAll() {
        return memberMapper.queryAll();
    }
}
