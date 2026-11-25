package com.xxxx.test;

import com.xxxx.entity.User_;
import com.xxxx.mapper.UserMapper;
import com.xxxx.util.GetSqlSession;
import org.apache.ibatis.session.SqlSession;

public class Test {
    public static void main(String[] args) {
        //获取SqlSession对象
        SqlSession session = GetSqlSession.createSqlSession();
        //得到对应Mapper
        UserMapper usermapper = null;
        if (session != null) {
            usermapper = session.getMapper(UserMapper.class);
        }
        //调用方法返回用户对象
        User_ user_ = null;
        if (usermapper != null) {
            user_ = usermapper.queryUserByName("wanggang01");
        }
        System.out.println(user_);
    }
}
