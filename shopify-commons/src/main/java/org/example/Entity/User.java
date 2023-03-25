package org.example.Entity;

import com.fasterxml.jackson.annotation.JsonInclude;
import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.NotBlank;
import java.io.Serializable;

public class User implements Serializable {
    public static final Long serialVersionUID = 1L;

    private String userId;
    @Length(min = 6,max = 20)
    private String userName;
    @NotBlank
    @JsonInclude(JsonInclude.Include.NON_NULL)
    private String password;
    @NotBlank
    @JsonInclude(JsonInclude.Include.NON_NULL)
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
