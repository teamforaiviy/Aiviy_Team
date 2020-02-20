package com.kgc.exam.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

/*
* 文件上传模块
* */
@Controller
@RequestMapping("upload")
public class UploadController {

    @RequestMapping("uploadIMG")
    public void uploadIMG(String gName, String gPrice, String gContent, MultipartFile goodIMG){
        if(goodIMG.isEmpty()){
            System.out.println("文件未上传！");
        }else {
            String goodIMGName = "";
        }
    }
}
