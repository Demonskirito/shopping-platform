package com.example.shopping.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.shopping.pojo.Car;
import com.example.shopping.pojo.Payment;

import java.util.List;


public interface PaymentService extends IService<Payment> {

    List<Payment> selectByOnlyid(String onlyid);
}
