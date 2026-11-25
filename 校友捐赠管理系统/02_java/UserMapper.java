package com.xxxx.mapper;

import com.xxxx.entity.User_;

/*
用户接口类
 */
public interface UserMapper {
    public User_ queryUserByName(String userName);
}
