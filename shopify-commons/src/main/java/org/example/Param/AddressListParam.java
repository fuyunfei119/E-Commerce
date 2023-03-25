package org.example.Param;

import javax.validation.constraints.NotNull;

public class AddressListParam {

    @NotNull
    private String userId;

    public AddressListParam() {
    }

    public AddressListParam(String userId) {
        this.userId = userId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "AddressListParam{" +
                "userId='" + userId + '\'' +
                '}';
    }
}
