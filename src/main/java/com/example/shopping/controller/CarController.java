package com.example.shopping.controller;


import com.example.shopping.pojo.Car;
import com.example.shopping.service.CarService;
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
@RequestMapping("/car")
public class CarController {

    @Autowired
    private CarService carService;


    //返回所有学生
    @GetMapping("/allCar")
    public List<Car> findAllProduct(){

        return carService.list();
    }


    //根据学号查询学生
    @GetMapping("/findById/{id}")
    public Car findById(@PathVariable("id") Integer id){

        return carService.getById(id);
    }

    //根据学号删除学生信息（此方法可以使用软件postman进行测试）
    @DeleteMapping("/deleteById/{id}")
    public boolean deleteBySno(@PathVariable("id") Integer id){
        return  carService.removeById(id);
    }



    //增加一个学生信息（此方法可以使用软件postman进行测试）,注意学号自增
    @PostMapping("/add")
    public boolean add(@RequestBody Car car){
        return carService.save(car);
    }



    //根据学号修改学生信息（此方法可以使用软件postman进行测试），注意学号自增
    @PutMapping("/update")
    public boolean update(@RequestBody Car car){
        return carService.updateById(car);
    }


    //根据onlyid查询购物车
    @GetMapping("/findByOnlyid/{onlyid}")
    public List<Car> findByOnlyid(@PathVariable("onlyid") String onlyid){
        return carService.selectByOnlyid(onlyid);
    }
}


