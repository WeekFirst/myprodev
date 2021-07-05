package com.mca.client.manager.server.impl;

import com.mca.client.manager.dao.UserInfoDAO;
import com.mca.client.manager.entity.UserInfo;
import com.mca.client.manager.entity.UserInfoAll;
import com.mca.client.manager.server.UserInfoService;
import com.mca.client.manager.util.RCode;
import com.mca.client.manager.util.ServiceResult;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;
import org.springframework.util.ObjectUtils;

@Service
@Transactional(rollbackFor = RuntimeException.class)
@Slf4j
public class UserInfoServiceImpl implements UserInfoService {

    @Autowired
    private UserInfoDAO userInfoDAO;

    @Override
    public ServiceResult<UserInfoAll> getUserInfoAll(UserInfoAll userInfoAll) {
        try {
            UserInfoAll userInfoAll1 = userInfoDAO.getUserInfoAllById(userInfoAll.getId());
            if (ObjectUtils.isEmpty(userInfoAll1)) {
                return ServiceResult.createFail();
            }else{
                return ServiceResult.createSuccess(userInfoAll1, RCode.SUCCESS);
            }
        } catch (Exception e) {
            log.error(e.getMessage());
            return ServiceResult.createError();
        }
    }

    @Override
    public ServiceResult<Boolean> updateUserInfo(UserInfo userInfo) {
        try {
            int result = userInfoDAO.updateUserInfoText(userInfo);
            if (result != 0) {
                return ServiceResult.createSuccess(true, RCode.SUCCESS);
            }else{
                return ServiceResult.createFail();
            }
        } catch (Exception e) {
            log.error(e.getMessage());
            TransactionAspectSupport.currentTransactionStatus().isRollbackOnly();
            return ServiceResult.createError();
        }
    }
}
