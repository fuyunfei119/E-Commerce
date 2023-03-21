package org.example.Service;

import org.example.Param.UserCheckParam;
import org.example.Utils.Result;
import org.springframework.stereotype.Service;

@Service
public interface UserService {
    Boolean check(UserCheckParam userCheckParam) throws Exception;
}
