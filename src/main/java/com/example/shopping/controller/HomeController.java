package com.example.shopping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String index() {
        return "index.html";
    }

    @GetMapping("/login")
    public String login() {
        return "login.html";
    }

    @GetMapping("/car")
    public String car() {
        return "car.html";
    }

    @GetMapping("/order")
    public String order() {
        return "order.html";
    }

    @GetMapping("/activity")
    public String activity() {
        return "activity.html";
    }

    @GetMapping("/order-detail")
    public String orderDetail() {
        return "order-detail.html";
    }
}

