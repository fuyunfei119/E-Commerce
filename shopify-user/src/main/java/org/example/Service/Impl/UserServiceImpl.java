package org.example.Service.Impl;

import org.example.Entity.User;
import org.example.Exception.User.UserException;
import org.example.Param.UserCheckParam;
import org.example.Repositry.UserRepositry;
import org.example.Service.UserService;
import org.example.Utils.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.util.Optionals;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;

import java.util.Optional;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepositry userRepositry;

    @Override
    public Boolean check(UserCheckParam userCheckParam) throws Exception {
        if (!ObjectUtils.isEmpty(
                userRepositry.IsEmpty(userCheckParam.getUserName())
        )) throw new Exception(UserException.UserNameAlreadyExistsException);

        return true;
    }
}
