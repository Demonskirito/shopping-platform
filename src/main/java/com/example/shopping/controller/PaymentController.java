package com.example.shopping.controller;


import com.example.shopping.pojo.Car;
import com.example.shopping.pojo.Payment;
import com.example.shopping.service.PaymentService;
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
@RequestMapping("/payment")
public class PaymentController {

    @Autowired
    private PaymentService paymentService;


    //返回所有学生
    @GetMapping("/allPayment")
    public List<Payment> findAllPayment(){

        return paymentService.list();
    }


    //根据学号查询学生
    @GetMapping("/findById/{id}")
    public Payment findById(@PathVariable("id") Integer id){

        return paymentService.getById(id);
    }

    //根据学号删除学生信息（此方法可以使用软件postman进行测试）
    @DeleteMapping("/deleteById/{id}")
    public boolean deleteBySno(@PathVariable("id") Integer id){
        return  paymentService.removeById(id);
    }



    //增加一个学生信息（此方法可以使用软件postman进行测试）,注意学号自增
    @PostMapping("/add")
    public boolean add(@RequestBody Payment payment){
        return paymentService.save(payment);
    }



    //根据学号修改学生信息（此方法可以使用软件postman进行测试），注意学号自增
    @PutMapping("/update")
    public boolean update(@RequestBody Payment payment){
        return paymentService.updateById(payment);
    }

    //根据onlyid查询购物车
    @GetMapping("/findByOnlyid/{onlyid}")
    public List<Payment> findByOnlyid(@PathVariable("onlyid") String onlyid){
        return paymentService.selectByOnlyid(onlyid);
    }
}


