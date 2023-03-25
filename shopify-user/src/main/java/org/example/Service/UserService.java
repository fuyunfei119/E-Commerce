package org.example.Service;

import org.example.Entity.User;
import org.example.Param.UserCheckParam;
import org.example.Param.UserLoginParam;
import org.example.Utils.Result;
import org.springframework.stereotype.Service;

@Service
public interface UserService {
    Boolean check(UserCheckParam userCheckParam) throws Exception;

    Boolean register(User user) throws Exception;

    User login(UserLoginParam userLoginParam) throws Exception;
}
