package org.example.Service.Impl;

import org.example.Entity.User;
import org.example.Exception.User.UserException;
import org.example.Param.UserCheckParam;
import org.example.Param.UserLoginParam;
import org.example.Repositry.UserRepositry;
import org.example.Service.UserService;
import org.example.Utils.MD5Util;
import org.example.Utils.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.util.Optionals;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;

import java.lang.reflect.GenericArrayType;
import java.util.ArrayList;
import java.util.Optional;
import java.util.UUID;

@Service
public class UserServiceImpl implements UserService {

    private final UserRepositry userRepositry;
    private final String ENCODESUFFIX = "adasdasgafkjhajkfhajkf";

    @Autowired
    public UserServiceImpl(UserRepositry userRepositry) {
        this.userRepositry = userRepositry;
    }

    public Boolean checkIfUserExist(String userName) throws Exception {
        if (userRepositry.IsEmpty(userName) == 1) throw new Exception(UserException.UserNameAlreadyExistsException);
        return true;
    }


    @Override
    public Boolean check(UserCheckParam userCheckParam) throws Exception {
        checkIfUserExist(userCheckParam.getUserName());
        return true;
    }

    @Override
    public Boolean register(User user) throws Exception {
        checkIfUserExist(user.getUserName());

        if (user.getPassword() != "") {
            user.setPassword(
                    MD5Util.encode(user.getPassword()+ENCODESUFFIX));
        }

        user.setUserId(UUID.randomUUID().toString());
        if(userRepositry.save(user) == 0) {
            throw new Exception("Insert Failed");
        };

        return true;
    }

    @Override
    public User login(UserLoginParam userLoginParam) throws Exception {
        if (userLoginParam.getPassword() != "") {
            userLoginParam.setPassword(
                    MD5Util.encode(userLoginParam.getPassword()+ENCODESUFFIX));
        }

        System.out.println(userLoginParam);

        User user = userRepositry.validatePassword(userLoginParam);
        if (user == null) {
            throw new Exception("UserName or Password Incorrect!");
        }

        user.setPassword(null);
        return user;
    }
}
