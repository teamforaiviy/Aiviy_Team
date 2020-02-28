package com.kgc.exam.controller;


import com.kgc.exam.entity.Goods;
import com.kgc.exam.entity.Image;
import com.kgc.exam.service.GoodsService;
import com.kgc.exam.service.ImageService;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/*
* 文件上传模块
* */
@Controller
@RequestMapping("upload")
public class UploadController {
    @Autowired
    private GoodsService goodsService;
    @Autowired
    private ImageService imageService;

    /*
    * 返回结果status=0图片未上传，status=1图片上传成功
    * */
    @RequestMapping("uploadIMG")
    public String uploadIMG(String goodIMGName,String gName,Double gPrice,String gContent,@RequestParam MultipartFile goodIMG) throws IOException, ParseException {
        if(goodIMG.isEmpty()){
            return "redirect:/admin/addGood.jsp?status="+0;
        }else {
            //将商品添加到D:\Aiviy_Img\img
            String ext = FilenameUtils.getExtension(goodIMG.getOriginalFilename());
            String imgUrl="D:\\Aiviy_Img\\img\\Goods\\"+goodIMGName+"."+ext;
            goodIMG.transferTo(new File(imgUrl));
            //数据库录入记录
            //查询商品，数据库中存在该商品就只添加图片，不存在就添加商品
            Goods goods = goodsService.queryGoodByGname(gName);
            if (goods == null){
                //商品不存在添加商品
                goods = new Goods();
                goods.setgName(gName);
                goods.setgPrice(gPrice);
                goods.setgContent(gContent);
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                Date date = simpleDateFormat.parse(simpleDateFormat.format(new Date()));
                goods.setUploadtime(date);
                goodsService.addGoods(goods);
            }
            //添加完成后再次查询
            goods = goodsService.queryGoodByGname(gName);
            //添加图片
            Image image = new Image();
            imgUrl="/img/Goods/"+goodIMGName+"."+ext;
            image.setImgUrl(imgUrl);
            image.setgId(goods.getgId());
            imageService.addIMG(image);
            return "redirect:/admin/addGood.jsp?status="+1;
        }
    }
}
