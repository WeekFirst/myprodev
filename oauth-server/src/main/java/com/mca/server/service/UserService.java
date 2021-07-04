package com.mca.server.service;

import com.alibaba.fastjson.JSON;
import com.mca.server.dao.UserLoginDao;
import com.mca.server.entity.UserInfo;
import com.mca.server.entity.UserInfoDTO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;
import org.springframework.util.ObjectUtils;

/**
 * @Author an Stark
 * @ClassName UserService
 * @Description TODO
 * @date 2021/6/24 下午12:22
 * @Version 1.0
 */
@Service
@Slf4j
@Transactional(rollbackFor = RuntimeException.class)
public class UserService implements UserDetailsService {

    @Autowired
    private UserLoginDao userLoginDao;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        UserInfoDTO userInfoDTO = userLoginDao.getUserByName(username);
        if (ObjectUtils.isEmpty(userInfoDTO)) {
            throw new UsernameNotFoundException("用户名不存在");
        }
        UserInfoDTO userChangeInfo = new UserInfoDTO();
        BeanUtils.copyProperties(userInfoDTO , userChangeInfo);
        userChangeInfo.setUserPassword("");
        String userInfoChange = JSON.toJSONString(userChangeInfo);
        return new User(userInfoChange, userInfoDTO.getUserPassword(), AuthorityUtils.commaSeparatedStringToAuthorityList(userInfoDTO.getUserAuthorities()));
    }



    public Boolean register(UserInfo userInfo) {
        try {
            UserInfoDTO userInfoDTO = userLoginDao.getUserByName(userInfo.getUserName());
            if(!ObjectUtils.isEmpty(userInfoDTO)){
                return false;
            }
            userInfo.setUserPassword(passwordEncoder.encode(userInfo.getUserPassword()));
            int result =  userLoginDao.insertUser(userInfo);
            return result != 0;
        } catch (Exception e) {
            log.error(e.getMessage());
            TransactionAspectSupport.currentTransactionStatus().isRollbackOnly();
            return false;
        }
    }
}
