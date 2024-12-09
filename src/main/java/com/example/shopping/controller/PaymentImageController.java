package com.example.shopping.controller;


import com.example.shopping.pojo.Payment;
import com.example.shopping.pojo.PaymentImage;
import com.example.shopping.service.PaymentImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author wuhan
 * @since 2024-04-13
 */
@RestController
@RequestMapping("/paymentImage")
public class PaymentImageController {

    @Autowired
    private PaymentImageService paymentImageService;


    //返回所有学生
    @GetMapping("/allPaymentImage")
    public List<PaymentImage> findAllProduct(){

        return paymentImageService.list();
    }


    //根据学号查询学生
    @GetMapping("/findById/{id}")
    public PaymentImage findById(@PathVariable("id") Integer id){

        return paymentImageService.getById(id);
    }

    //根据学号删除学生信息（此方法可以使用软件postman进行测试）
    @DeleteMapping("/deleteById/{id}")
    public boolean deleteBySno(@PathVariable("id") Integer id){
        return  paymentImageService.removeById(id);
    }



    //增加一个学生信息（此方法可以使用软件postman进行测试）,注意学号自增
    @PostMapping("/add")
    public boolean add(@RequestBody PaymentImage paymentImage){
        return paymentImageService.save(paymentImage);
    }



    //根据学号修改学生信息（此方法可以使用软件postman进行测试），注意学号自增
    @PutMapping("/update")
    public boolean update(@RequestBody PaymentImage paymentImage){
        return paymentImageService.updateById(paymentImage);
    }

    //根据onlyid查询购物车
    @GetMapping("/findByUUID/{uuid}")
    public List<PaymentImage> findByOnlyid(@PathVariable("uuid") String uuid){
        return paymentImageService.selectByUUID(uuid);
    }
}


