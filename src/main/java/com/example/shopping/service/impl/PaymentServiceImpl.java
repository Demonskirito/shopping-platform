package com.example.shopping.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.shopping.mapper.PaymentMapper;
import com.example.shopping.mapper.ProductMapper;
import com.example.shopping.pojo.Payment;
import com.example.shopping.pojo.Product;
import com.example.shopping.service.PaymentService;
import com.example.shopping.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PaymentServiceImpl extends ServiceImpl<PaymentMapper, Payment> implements PaymentService {
    @Autowired
    private PaymentMapper paymentMapper;

    @Override
    public List<Payment> selectByOnlyid(String onlyid) {
        return paymentMapper.selectByOnlyid(onlyid);
    }
}
