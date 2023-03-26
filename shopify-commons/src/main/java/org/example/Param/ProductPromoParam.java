package org.example.Param;

import javax.validation.constraints.NotNull;

public class ProductPromoParam {
    @NotNull
    private String categoryName;

    public ProductPromoParam() {
    }

    public ProductPromoParam(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    @Override
    public String toString() {
        return "ProductPromoParam{" +
                "categoryName='" + categoryName + '\'' +
                '}';
    }
}
