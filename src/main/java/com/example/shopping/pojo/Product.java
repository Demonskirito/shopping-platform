package com.example.shopping.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

//使用@Data自动生成需要的get、set
@Data
//使用@AllArgsConstructor自动生成有参构造
@AllArgsConstructor
//使用@NoArgsConstructor自动生成无参构造
@NoArgsConstructor
public class Product {
    private Integer id;
    private String productId;
    private String productImg;
    private String productName;
    private String price;
    private String productDetail;
    private Integer productNumber;
    private Integer dirid;
}
