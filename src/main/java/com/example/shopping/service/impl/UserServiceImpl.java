package com.example.shopping.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.shopping.mapper.ProductMapper;
import com.example.shopping.mapper.UserMapper;
import com.example.shopping.pojo.Product;
import com.example.shopping.pojo.User;
import com.example.shopping.service.ProductService;
import com.example.shopping.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {
}
