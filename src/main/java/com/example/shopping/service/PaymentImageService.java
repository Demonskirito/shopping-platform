package com.example.shopping.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.shopping.pojo.PaymentImage;

import java.util.List;

public interface PaymentImageService extends IService<PaymentImage> {
    List<PaymentImage> selectByUUID(String uuid);
}
