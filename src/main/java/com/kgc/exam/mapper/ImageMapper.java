package com.kgc.exam.mapper;
import org.apache.ibatis.annotations.Param;

import com.kgc.exam.entity.Image;

import java.util.List;

public interface ImageMapper {
    int deleteByPrimaryKey(Integer imgId);

    int insert(Image record);

    int insertSelective(Image record);

    Image selectByPrimaryKey(Integer imgId);

    int updateByPrimaryKeySelective(Image record);

    int updateByPrimaryKey(Image record);

    List<Image> queryAllByGId(@Param("gId")Integer gId);


}