package org.example.Param;

import javax.validation.constraints.NotNull;

public class AddressRemoveParam {

    @NotNull
    private String id;

    public AddressRemoveParam() {
    }

    public AddressRemoveParam(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "AddressRemoveParam{" +
                "id='" + id + '\'' +
                '}';
    }
}
