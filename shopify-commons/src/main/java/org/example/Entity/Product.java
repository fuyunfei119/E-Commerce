package org.example.Entity;

import java.io.Serializable;
public class Product implements Serializable {
    public static final Long serialVersionUID = 1L;
    private String productId;
    private String productName;
    private String categoryId;
    private String productTitle;
    private String productIntro;
    private String productPicture;
    private Double productPrice;
    private Double productSellingPrice;
    private Integer productNum;
    private Integer productSales;

    public Product() {
    }

    public Product(String productId, String productName, String categoryId, String productTitle, String productIntro, String productPicture, Double productPrice, Double productSellingPrice, Integer productNum, Integer productSales) {
        this.productId = productId;
        this.productName = productName;
        this.categoryId = categoryId;
        this.productTitle = productTitle;
        this.productIntro = productIntro;
        this.productPicture = productPicture;
        this.productPrice = productPrice;
        this.productSellingPrice = productSellingPrice;
        this.productNum = productNum;
        this.productSales = productSales;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }

    public String getProductTitle() {
        return productTitle;
    }

    public void setProductTitle(String productTitle) {
        this.productTitle = productTitle;
    }

    public String getProductIntro() {
        return productIntro;
    }

    public void setProductIntro(String productIntro) {
        this.productIntro = productIntro;
    }

    public String getProductPicture() {
        return productPicture;
    }

    public void setProductPicture(String productPicture) {
        this.productPicture = productPicture;
    }

    public Double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(Double productPrice) {
        this.productPrice = productPrice;
    }

    public Double getProductSellingPrice() {
        return productSellingPrice;
    }

    public void setProductSellingPrice(Double productSellingPrice) {
        this.productSellingPrice = productSellingPrice;
    }

    public Integer getProductNum() {
        return productNum;
    }

    public void setProductNum(Integer productNum) {
        this.productNum = productNum;
    }

    public Integer getProductSales() {
        return productSales;
    }

    public void setProductSales(Integer productSales) {
        this.productSales = productSales;
    }

    @Override
    public String toString() {
        return "Product{" +
                "productId='" + productId + '\'' +
                ", productName='" + productName + '\'' +
                ", categoryId='" + categoryId + '\'' +
                ", productTitle='" + productTitle + '\'' +
                ", productIntro='" + productIntro + '\'' +
                ", productPicture='" + productPicture + '\'' +
                ", productPrice=" + productPrice +
                ", productSellingPrice=" + productSellingPrice +
                ", productNum=" + productNum +
                ", productSales=" + productSales +
                '}';
    }
}
