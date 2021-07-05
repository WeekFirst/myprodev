package com.mca.client.manager.controller;

import com.alibaba.fastjson.JSON;
import com.mca.client.manager.entity.UserInfo;
import com.mca.client.manager.entity.UserInfoAll;
import com.mca.client.manager.server.UserInfoService;
import com.mca.client.manager.util.RCode;
import com.mca.client.manager.util.Result;
import com.mca.client.manager.util.ServiceResult;
import lombok.extern.slf4j.Slf4j;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;


@RestController
//@CrossOrigin(origins = "*" , maxAge = 3600)
@Slf4j
@RequestMapping(value = "")
public class UserController {

    @Autowired
    private UserInfoService userInfoService;

    @GetMapping(value = "getInfo")
    public Result getUserInfo(Authentication authentication) {
        String name = authentication.getName();
        Object parse = JSON.parse(name);
        ObjectMapper objectMapper = new ObjectMapper();
        UserInfoAll userInfoAll = objectMapper.convertValue(parse, UserInfoAll.class);
        ServiceResult<UserInfoAll> result = userInfoService.getUserInfoAll(userInfoAll);
        if (result.isSuccess()) {
            return Result.ok(result.getValue());
        }else{
            return Result.error();
        }
    }

    @PostMapping(value = "/info")
    public Result userInfo(UserInfo userInfo){
        System.out.println(userInfo.getUserText());
        try {
            ServiceResult<Boolean> result = userInfoService.updateUserInfo(userInfo);
            if (result.isSuccess()) {
                return Result.ok();
            }else{
                return Result.fail(RCode.FAIL);
            }
        } catch (Exception e) {
            log.error(e.getMessage());
            return Result.error();
        }
    }

}
