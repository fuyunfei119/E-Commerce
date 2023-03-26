package org.example.Param;


import javax.validation.constraints.NotEmpty;
import java.util.List;

public class ProductHotParam {
    @NotEmpty
    private List<String> categoryNames;

    public ProductHotParam() {
    }

    public ProductHotParam(List<String> categoryNames) {
        this.categoryNames = categoryNames;
    }

    public List<String> getCategoryNames() {
        return categoryNames;
    }

    public void setCategoryNames(List<String> categoryNames) {
        this.categoryNames = categoryNames;
    }

    @Override
    public String toString() {
        return "ProductHotParam{" +
                "categoryNames=" + categoryNames +
                '}';
    }
}
