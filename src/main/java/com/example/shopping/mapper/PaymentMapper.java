package com.example.shopping.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.shopping.pojo.Car;
import com.example.shopping.pojo.Payment;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface PaymentMapper extends BaseMapper<Payment> {

    List<Payment> selectByOnlyid(String onlyid);
}
