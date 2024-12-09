package com.example.shopping.controller;

import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@RestController
@RequestMapping("/login")
public class LoginController {

    private final String USER_URL = "http://localhost:8081/user/allUser";

    private final RestTemplate restTemplate;

    public LoginController(RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    @PostMapping
    public Map<String, Object> login(@RequestBody Map<String, String> loginRequest) {
        String phone = loginRequest.get("phone");
        String password = loginRequest.get("password");

        // 从远程接口获取所有用户
        List<Map<String, Object>> users = restTemplate.getForObject(USER_URL, List.class);

        // 查找匹配的用户
        Optional<Map<String, Object>> userOpt = users.stream()
                .filter(user -> phone.equals(user.get("mobile").toString()) && password.equals(user.get("password").toString()))
                .findFirst();

        // 如果找到用户并且密码匹配
        if (userOpt.isPresent()) {
            Map<String, Object> response = new HashMap<>();
            response.put("success", true);
            response.put("message", "登录成功");
            response.put("user", userOpt.get());
            return response;
        }

        // 如果没有找到匹配的用户或密码错误
        Map<String, Object> response = new HashMap<>();
        response.put("success", false);
        response.put("message", "手机号或密码错误");
        return response;
    }
}
