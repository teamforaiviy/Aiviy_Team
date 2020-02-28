package com.kgc.exam.controller;

import com.kgc.exam.entity.Member;
import com.kgc.exam.mapper.MemberMapper;
import com.kgc.exam.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/member")
@ResponseBody
public class MemberController {

    @Autowired
    private MemberService memberService;

    @RequestMapping("/queryAll")
    public List<Member> queryAll() {
        return memberService.queryAll();
    }
}
