package com.example.shopping.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.shopping.mapper.CarMapper;
import com.example.shopping.pojo.Car;
import com.example.shopping.service.CarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.xml.ws.Action;
import java.util.List;

@Service
public class CarServiceImpl  extends ServiceImpl<CarMapper, Car> implements CarService {

    @Autowired
    private CarMapper carMapper;

    @Override
    public List<Car> selectByOnlyid(String onlyid) {
        return carMapper.selectByOnlyid(onlyid);
    }
}
