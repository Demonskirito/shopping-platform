package com.example.shopping.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

//使用@Data自动生成需要的get、set
@Data
//使用@AllArgsConstructor自动生成有参构造
@AllArgsConstructor
//使用@NoArgsConstructor自动生成无参构造
@NoArgsConstructor
public class Payment {
    @TableId(type = IdType.AUTO)  // 设置 id 自增
    private Integer id;

    private String uuid;
    private String price;
    private LocalDateTime createTime;
    private String information;
    private String onlyid;
    private Integer status;
}
