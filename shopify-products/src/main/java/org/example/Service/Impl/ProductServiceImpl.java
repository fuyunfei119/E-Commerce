package org.example.Service.Impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.rabbitmq.tools.json.JSONUtil;
import org.apache.tomcat.util.json.JSONParser;
import org.example.Clients.CategoryClient;
import org.example.Entity.Category;
import org.example.Entity.Product;
import org.example.Param.ProductHotParam;
import org.example.Repositry.ProductRepositry;
import org.example.Service.ProductService;
import org.example.Utils.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductRepositry productRepositry;
    @Autowired
    private CategoryClient categoryClient;

    @Override
    public List<Product> getListByCategoryName(String productPromoParam) throws Exception {
        Result result = categoryClient.getOneByName(productPromoParam);
        if (ObjectUtils.isEmpty(result) | result.getCode().isBlank() |
                result.getCode().equals(Result.FAIL_CODE)) throw new Exception("Get Category Failed");

        ObjectMapper objectMapper = new ObjectMapper();
        Category category = objectMapper.convertValue(result.getData(),Category.class);

        if (category.getCategoryId().isBlank()) throw new Exception("getCategoryId Failed");

        List<Product> productList = productRepositry.getListByCategoryName(category.getCategoryId());
        if (ObjectUtils.isEmpty(productList)) throw new Exception("No Products");
        return productList;
    }

    @Override
    public List<Product> getHotsProducts(ProductHotParam productHotParam) throws Exception {
        // Get Categories From Category Services
        Result result = categoryClient.hotsCategory(productHotParam);
        if (ObjectUtils.isEmpty(result) | result.getCode().isBlank() |
                result.getCode().equals(Result.FAIL_CODE)) throw new Exception("Get Category Failed");

        // Convert Json From Category Services to Object Category
        ObjectMapper objectMapper = new ObjectMapper();
        List categoryList = objectMapper.convertValue(result.getData(), List.class);

        // Get all CategoryId from Category Objectes
        List<String> Ids = new ArrayList<>();
        categoryList.forEach(o -> {
            Category category = objectMapper.convertValue(o, Category.class);
            Ids.add(category.getCategoryId());
        });

        // Get Hots Products
        List<Product> products = productRepositry.getHotProducts(Ids);
        if (ObjectUtils.isEmpty(products)) throw new Exception("Get Product Failed");
        return products;
    }
}
