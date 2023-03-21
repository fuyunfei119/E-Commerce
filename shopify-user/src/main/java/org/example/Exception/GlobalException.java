package org.example.Exception;

import org.example.Exception.ParamException.UserNameEmptyException;
import org.example.Utils.Result;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

@ControllerAdvice
public class GlobalException {
    private final String UserNameEmptyException = "The username is empty. It must have an value.";

    @ExceptionHandler(value = UserNameEmptyException.class)
    @ResponseBody
    public Result UserNameEmptyException() {
        return Result.fail(UserNameEmptyException);
    }
}
