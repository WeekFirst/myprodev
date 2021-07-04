package com.mca.server.controller;

import com.alibaba.fastjson.JSONObject;
import com.mca.server.entity.UserInfo;
import com.mca.server.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

//@CrossOrigin(origins = "*" , maxAge = 3600)
@RestController
@RequestMapping(value = "/register")
@Slf4j
public class RegisterController {

    @Autowired
    private UserService userService;

    @PostMapping(value = "")
    public Object register(UserInfo userInfo){
        Map<String, Object> map;
        try {
            Boolean result = userService.register(userInfo);
            if(result){
                map = new HashMap<>();
                map.put("code", 200);
                map.put("message", "创建成功");
                return new JSONObject(map);
            }else{
                map = new HashMap<>();
                map.put("code", 100);
                map.put("message", "用户名以存在");
                return new JSONObject(map);
            }
        } catch (Exception e) {
            log.error(e.getMessage());
            map = new HashMap<>();
            map.put("code", 403);
            map.put("message", "create err");
            return new JSONObject(map);
        }
    }


}
