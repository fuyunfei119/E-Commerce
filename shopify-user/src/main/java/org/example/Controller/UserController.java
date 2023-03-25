package org.example.Controller;

import org.example.Entity.User;
import org.example.Param.UserCheckParam;
import org.example.Param.UserLoginParam;
import org.example.Service.Impl.UserServiceImpl;
import org.example.Utils.Result;
import org.mybatis.logging.Logger;
import org.mybatis.logging.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/user")
public class UserController {
    private static final Logger LOGGER = LoggerFactory.getLogger(UserController.class);
    @Autowired
    private UserServiceImpl userService;

    @PostMapping(value = "/check")
    @ResponseBody
    public Result check(@RequestBody @Validated UserCheckParam userCheckParam, BindingResult bindingResult) {
        try {
            if (bindingResult.hasErrors()) throw new Exception("Username must have an value.");

            userService.check(userCheckParam);
            return Result.ok("The name could be used.");
        } catch (Exception e) {
            return Result.fail(e.getMessage());
        }
    }

    @PostMapping(value = "/register")
    @ResponseBody
    public Result register(@RequestBody @Validated User user, BindingResult result) throws Exception {
        try {
            if (result.hasErrors()) throw new Exception("Parameters Incorrect");

            userService.register(user);
            return Result.ok("Successfully");
        } catch (Exception exception) {
            return Result.fail(exception.getMessage());
        }
    }

    @PostMapping(value = "/login")
    @ResponseBody
    public Result login(@RequestBody @Validated UserLoginParam userLoginParam, BindingResult result) {
        try {
            if (result.hasErrors()) throw new Exception("Parameters Incorrect");

            User user = userService.login(userLoginParam);
            return Result.ok("Successfully",user);
        }catch (Exception exception) {
            return Result.fail(exception.getMessage());
        }
    }
}
