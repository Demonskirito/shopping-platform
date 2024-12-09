package com.example.shopping.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.shopping.pojo.Car;

import java.util.List;


public interface CarService extends IService<Car> {


    List<Car> selectByOnlyid(String onlyid);
}
