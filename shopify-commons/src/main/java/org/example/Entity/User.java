package org.example.Entity;

import java.io.Serializable;

public class User implements Serializable {
    public static final Long serialVersionUID = 1L;

    private String userId;
    private String userName;
    private String password;
    private String userPhonenumber;

    public User() {
    }

    public User(String userId, String userName, String password, String userPhonenumber) {
        this.userId = userId;
        this.userName = userName;
        this.password = password;
        this.userPhonenumber = userPhonenumber;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUserPhonenumber() {
        return userPhonenumber;
    }

    public void setUserPhonenumber(String userPhonenumber) {
        this.userPhonenumber = userPhonenumber;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId='" + userId + '\'' +
                ", userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", userPhonenumber='" + userPhonenumber + '\'' +
                '}';
    }
}
