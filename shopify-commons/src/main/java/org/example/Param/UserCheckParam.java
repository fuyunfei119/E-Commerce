package org.example.Param;

import javax.validation.constraints.NotBlank;

public class UserCheckParam {

    @NotBlank
    private String userName;

    public UserCheckParam() {
    }

    public UserCheckParam(String userName) {
        this.userName = userName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    @Override
    public String toString() {
        return "UserCheckParam{" +
                "userName='" + userName + '\'' +
                '}';
    }
}
