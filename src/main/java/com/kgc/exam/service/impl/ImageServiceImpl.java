package com.kgc.exam.service.impl;

import com.kgc.exam.entity.Image;
import com.kgc.exam.mapper.ImageMapper;
import com.kgc.exam.service.ImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ImageServiceImpl implements ImageService {
    @Autowired
    private ImageMapper imageMapper;

    @Override
    public Boolean addIMG(Image image) {
        return imageMapper.insert(image)==1;
    }

    @Override
    public List<Image> queryIMGByGid(Integer gid) {
        return imageMapper.queryAllByGId(gid);
    }
}
