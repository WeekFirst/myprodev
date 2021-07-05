package com.mca.client.manager.dao;

import com.mca.client.manager.entity.UserInfo;
import com.mca.client.manager.entity.UserInfoAll;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserInfoDAO {

    public UserInfoAll getUserInfoAllById(@Param("id") Long id);

    public int updateUserInfoText(UserInfo userInfo);
}
