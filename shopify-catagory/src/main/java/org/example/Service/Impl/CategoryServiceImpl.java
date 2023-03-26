package org.example.Service.Impl;

import org.apache.tomcat.util.buf.StringUtils;
import org.example.Entity.Category;
import org.example.Repositry.CategoryRepositry;
import org.example.Service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;

import java.util.List;

@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    private CategoryRepositry categoryRepositry;

    @Override
    public Category getOneByName(String categoryName) throws Exception {
        Category category = categoryRepositry.getOneByName(categoryName);

        if (ObjectUtils.isEmpty(category)) throw new Exception("Get CategoryName Failed");
        return category;
    }

    @Override
    public List<Category> getHotsCategory(List<String> categoryNames) throws Exception {
        List<Category> categoryList = categoryRepositry.getCategorysByHotsName(categoryNames);

        if (ObjectUtils.isEmpty(categoryList)) throw new Exception("Get Hot Category Failed");
        return categoryList;
    }
}
