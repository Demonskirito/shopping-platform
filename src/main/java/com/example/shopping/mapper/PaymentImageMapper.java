package com.example.shopping.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.shopping.pojo.PaymentImage;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface PaymentImageMapper extends BaseMapper<PaymentImage> {
    List<PaymentImage> selectByUUID(String uuid);
}
