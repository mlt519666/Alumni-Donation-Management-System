package com.xxxx.entity;

/*
User实体类
 */

public class User_ {
    private String userID; //用户编号
    private String userName; //用户名字
    private String userPassword; //用户密码
    private String role; //用户角色（校友/捐赠理事）

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
}

