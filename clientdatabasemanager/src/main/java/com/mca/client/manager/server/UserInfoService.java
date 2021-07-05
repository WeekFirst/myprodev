package com.mca.client.manager.server;


import com.mca.client.manager.entity.UserInfo;
import com.mca.client.manager.entity.UserInfoAll;
import com.mca.client.manager.util.ServiceResult;

public interface UserInfoService {

    public ServiceResult<UserInfoAll> getUserInfoAll(UserInfoAll userInfoAll);

    public ServiceResult<Boolean> updateUserInfo(UserInfo userInfo);
}
