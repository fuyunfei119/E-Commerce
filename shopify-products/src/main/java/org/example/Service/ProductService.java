package org.example.Service;

import org.example.Entity.Product;
import org.example.Param.ProductHotParam;

import java.util.List;

public interface ProductService {
    List<Product> getListByCategoryName(String productPromoParam) throws Exception;

    List<Product> getHotsProducts(ProductHotParam productHotParam) throws Exception;
}
