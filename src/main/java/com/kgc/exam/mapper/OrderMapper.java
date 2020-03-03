package com.kgc.exam.mapper;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.kgc.exam.entity.Order;

public interface OrderMapper {
    /*
    * 根据主键删除数据
    * */
    int deleteByPrimaryKey(Integer oId);

    /*
    * 插入数据，数据必须是全的
    * */
    int insert(Order record);

    /*
    * 选择性插入数据
    * */
    int insertSelective(Order record);

    /*
    * 根据主键查询数据
    * */
    Order selectByPrimaryKey(Integer oId);

    /*
    * 选择性更新数据（通过表中的主键确认更新哪一条）
    * */
    int updateByPrimaryKeySelective(Order record);

    /*
    * 更新数据（数据必须是全的）
    * */
    int updateByPrimaryKey(Order record);

    /*
    * 根据订单号查询订单
    * */
    Order queryAllByONo(@Param("oNo")String oNo);


}