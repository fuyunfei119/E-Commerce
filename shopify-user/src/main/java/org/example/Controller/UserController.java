package org.example.Controller;

import org.example.Exception.ParamException.UserNameEmptyException;
import org.example.Param.UserCheckParam;
import org.example.Service.Impl.UserServiceImpl;
import org.example.Utils.Result;
import org.mybatis.logging.Logger;
import org.mybatis.logging.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/user")
public class UserController {
    private static final Logger LOGGER = LoggerFactory.getLogger(UserController.class);
    @Autowired
    private UserServiceImpl userService;

    @PostMapping("/check")
    public Result check(@RequestBody @Validated UserCheckParam userCheckParam, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) throw new UserNameEmptyException();

        try {
            userService.check(userCheckParam);
            Result.ok("The name could be used.");
        } catch (Exception e) {
            Result.fail(e.getMessage());
        }

        return null;
    }
}
