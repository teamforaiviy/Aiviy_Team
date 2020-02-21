package com.kgc.exam.controller;


import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

/*
* 文件上传模块
* */
@Controller
@RequestMapping("upload")
public class UploadController {

    @RequestMapping("uploadIMG")
    public void uploadIMG(String gName, String gPrice, String gContent, MultipartFile goodIMG) throws IOException {
        if(goodIMG.isEmpty()){
            System.out.println("文件未上传！");
        }else {
            String goodIMGName = gName;
            String ext = FilenameUtils.getExtension(goodIMG.getOriginalFilename());
            goodIMG.transferTo(new File("D:\\Aiviy_Img\\img\\"+goodIMGName+"."+ext));
        }
    }
}
