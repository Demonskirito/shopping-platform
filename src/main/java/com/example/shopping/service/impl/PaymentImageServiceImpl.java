package com.example.shopping.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.shopping.mapper.PaymentImageMapper;
import com.example.shopping.pojo.PaymentImage;
import com.example.shopping.service.PaymentImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PaymentImageServiceImpl extends ServiceImpl<PaymentImageMapper, PaymentImage> implements PaymentImageService {

//    @Autowired
//    private PaymentImageMapper paymentImageMapper;

    @Override
    public List<PaymentImage> selectByUUID(String uuid) {
        return baseMapper.selectByUUID(uuid);
    }
}
