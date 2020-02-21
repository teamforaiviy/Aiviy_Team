package com.kgc.exam.service;

import com.kgc.exam.entity.Image;

import java.util.List;

public interface ImageService {
    /*
    * 添加图片,image参数中必须包含gid(商品id)
    * */
    Boolean addIMG(Image image);

    /*
    * 根据商品id查询图片
    * */
    List<Image> queryIMGByGid(Integer gid);
}
