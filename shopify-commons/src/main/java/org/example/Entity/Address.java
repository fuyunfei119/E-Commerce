package org.example.Entity;

import javax.validation.constraints.NotNull;
import java.io.Serializable;

public class Address implements Serializable {
    public static final Long serialVersionUID = 1L;

    private String id;
    @NotNull
    private String linkman;
    @NotNull
    private String phone;
    @NotNull
    private String address;
    @NotNull
    private String userId;

    public Address() {
    }

    public Address(String id, String linkman, String phone, String address, String userId) {
        this.id = id;
        this.linkman = linkman;
        this.phone = phone;
        this.address = address;
        this.userId = userId;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getLinkman() {
        return linkman;
    }

    public void setLinkman(String linkman) {
        this.linkman = linkman;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "Address{" +
                "id='" + id + '\'' +
                ", linkman='" + linkman + '\'' +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                ", userId='" + userId + '\'' +
                '}';
    }
}
