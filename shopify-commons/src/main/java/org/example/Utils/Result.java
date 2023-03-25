package org.example.Utils;

import com.fasterxml.jackson.annotation.JsonInclude;

public class Result {

    public static final String SUCCESS_CODE = "001";
    public static final String FAIL_CODE = "004";
    public static final String USER_NO_LOGIN = "401";

    private String code;
    @JsonInclude(JsonInclude.Include.NON_NULL)
    private String msg;
    @JsonInclude(JsonInclude.Include.NON_NULL)
    private Object data;
    @JsonInclude(JsonInclude.Include.NON_NULL)
    private Long  total;

    public Result() {
    }

    public Result(String code, String msg, Object data, Long total) {
        this.code = code;
        this.msg = msg;
        this.data = data;
        this.total = total;
    }

    public static Result ok(String msg, Object data, Long total){

        return new Result(SUCCESS_CODE,msg,data,total);
    }

    public static Result ok(String msg, Object data){

        return ok(msg,data,null);
    }

    public static Result ok(String msg){

        return ok(msg,null);
    }

    public static Result ok(Object data){

        return ok(null,data);
    }

    public static Result fail(String msg, Object data, Long total){

        return new Result(FAIL_CODE,msg,data,total);
    }

    public static Result fail(String msg, Object data){

        return fail(msg,data,null);
    }

    public static Result fail(String msg){

        return fail(msg,null);
    }

    public static Result fail(Object data){

        return fail(null,data);
    }

    public static Result NO_LOGIN(){

        return fail(USER_NO_LOGIN,"用户未登录!");
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public Long getTotal() {
        return total;
    }

    public void setTotal(Long total) {
        this.total = total;
    }
}
