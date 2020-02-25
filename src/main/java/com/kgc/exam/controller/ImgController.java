package com.kgc.exam.controller;

import com.kgc.exam.entity.Image;
import com.kgc.exam.service.ImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
@Controller
@ResponseBody
@RequestMapping("img")
public class ImgController {
    @Autowired
    private ImageService imageService;
    @RequestMapping("query")
    public List<Image> queryIMGByGid(@RequestParam("gid") Integer gid){
        return imageService.queryIMGByGid(gid);
    }
}
