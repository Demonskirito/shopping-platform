package com.example.shopping.controller;


import com.example.shopping.pojo.Product;
import com.example.shopping.service.ProductService;
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
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private ProductService productService;


    //返回所有学生
    @GetMapping("/allProduct")
    public List<Product> findAllProduct(){

        return productService.list();
    }


    //根据学号查询学生
    @GetMapping("/findById/{id}")
    public Product findById(@PathVariable("id") Integer id){

        return productService.getById(id);
    }

    //根据学号删除学生信息（此方法可以使用软件postman进行测试）
    @DeleteMapping("/deleteById/{id}")
    public boolean deleteBySno(@PathVariable("id") Integer id){
        return  productService.removeById(id);
    }



    //增加一个学生信息（此方法可以使用软件postman进行测试）,注意学号自增
    @PostMapping("/add")
    public boolean add(@RequestBody Product product){
        return productService.save(product);
    }



    //根据学号修改学生信息（此方法可以使用软件postman进行测试），注意学号自增
    @PutMapping("/update")
    public boolean update(@RequestBody Product product){
        return productService.updateById(product);
    }

}


