package com.mca.client.manager.controller;

import com.alibaba.fastjson.JSON;
import com.mca.client.manager.util.Result;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
//@CrossOrigin(origins = "*" , maxAge = 3600)
@Slf4j
@RequestMapping(value = "")
public class UserController {


    @GetMapping(value = "getInfo")
    private Result getUserInfo(Authentication authentication) {
        String name = authentication.getName();
        Object parse = JSON.parse(name);
        return Result.ok(parse);
    }


}
