package com.xxxx.service;

/*
业务逻辑
 */

import com.xxxx.entity.User_;
import com.xxxx.entity.vo.MessageModel;
import com.xxxx.mapper.UserMapper;
import com.xxxx.util.GetSqlSession;
import com.xxxx.util.StringUtil;
import org.apache.ibatis.session.SqlSession;

public class UserService {
    public MessageModel userLogin(String uname, String upa) {
        MessageModel messageModel = new MessageModel();

        //回显数据
        User_ user = new User_();
        user.setUserName(uname);
        user.setUserPassword(upa);
        messageModel.setObject(user);

        //1.参数非空判断
        if(StringUtil.isEmpty(uname) || StringUtil.isEmpty(upa)) {
            //状态码、提示信息、回显数据设置到消息模型对象中并返回消息模型对象
            messageModel.setCode(0);
            messageModel.setMsg("用户姓名或密码不能为空，请输入！");
            return messageModel;
        }

        //2.调用dao层查询方法，通过用户名查询用户对象
        SqlSession session = GetSqlSession.createSqlSession();
        UserMapper userMapper = session.getMapper(UserMapper.class);
        User_ user_ = userMapper.queryUserByName(uname);

        //3.判断用户对象是否为空
        if(user_ == null) {
            messageModel.setCode(0);
            messageModel.setMsg("用户不存在，检查一下吧~");
            return messageModel;
        }

        //4.将数据库中查询到的用户密码和前台登录的用户密码进行匹配
        if(!upa.equals(user_.getUserPassword())) {
            //若不相等，将状态码、提示信息、回显数据设置到消息模型对象中，返回消息模型
            messageModel.setCode(0);
            messageModel.setMsg("密码错误，再检查一下吧！");
            return messageModel;
        }

        //登录成功，将用户信息设置到消息模型中
        messageModel.setObject(user_);

        return messageModel;
    }
}
