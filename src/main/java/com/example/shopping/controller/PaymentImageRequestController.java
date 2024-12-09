package com.example.shopping.controller;

import com.example.shopping.pojo.PaymentImage;
import com.example.shopping.pojo.PaymentImageRequest;
import com.example.shopping.service.PaymentImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/paymentImageRequest")
public class PaymentImageRequestController {

    @Autowired
    private PaymentImageService paymentImageService;

    @PostMapping("/add")
    public ResponseEntity<String> addPaymentImages(@RequestBody PaymentImageRequest request) {
        // 打印请求数据，进行调试
        System.out.println("接收到的 UUID: " + request.getUuid());
        for (PaymentImageRequest.ImageInfo imageInfo : request.getImages()) {
            PaymentImage paymentImage = new PaymentImage();
            paymentImage.setId(imageInfo.getId());
            paymentImage.setImage(imageInfo.getImage());
            paymentImage.setUuid(request.getUuid());
            paymentImageService.save(paymentImage);
        }

        // 在这里可以将数据保存到数据库
        // 假设你有一个服务类用于处理数据存储
        // paymentImageService.savePaymentImages(request);

        // 返回成功响应
        return ResponseEntity.ok("支付图片信息已保存");
    }
}
