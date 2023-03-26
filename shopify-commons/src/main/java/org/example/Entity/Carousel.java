package org.example.Entity;

import java.io.Serializable;

public class Carousel implements Serializable {
    public static final Long serialVersionUID = 1L;
    private String carouselId;
    private String imgPath;
    private String describes;
    private String productId;
    private Integer priority;

    public Carousel() {
    }

    public Carousel(String carouselId, String imgPath, String describes, String productId, Integer priority) {
        this.carouselId = carouselId;
        this.imgPath = imgPath;
        this.describes = describes;
        this.productId = productId;
        this.priority = priority;
    }

    public String getCarouselId() {
        return carouselId;
    }

    public void setCarouselId(String carouselId) {
        this.carouselId = carouselId;
    }

    public String getImgPath() {
        return imgPath;
    }

    public void setImgPath(String imgPath) {
        this.imgPath = imgPath;
    }

    public String getDescribes() {
        return describes;
    }

    public void setDescribes(String describes) {
        this.describes = describes;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public Integer getPriority() {
        return priority;
    }

    public void setPriority(Integer priority) {
        this.priority = priority;
    }

    @Override
    public String toString() {
        return "Carousel{" +
                "carouselId='" + carouselId + '\'' +
                ", imgPath='" + imgPath + '\'' +
                ", describes='" + describes + '\'' +
                ", productId='" + productId + '\'' +
                ", priority=" + priority +
                '}';
    }
}
