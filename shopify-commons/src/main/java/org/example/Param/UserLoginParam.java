package org.example.Param;

import javax.validation.constraints.NotBlank;

public class UserLoginParam {

    @NotBlank
    private String userName;
    @NotBlank
    private String password;

    public UserLoginParam() {
    }

    public UserLoginParam(String userName, String password) {
        this.userName = userName;
        this.password = password;
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

    @Override
    public String toString() {
        return "UserLoginParam{" +
                "userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
