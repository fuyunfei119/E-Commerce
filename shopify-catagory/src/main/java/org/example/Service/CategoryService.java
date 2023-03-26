package org.example.Service;

import org.example.Entity.Category;
import org.example.Entity.Product;

import java.util.List;

public interface CategoryService {
    Category getOneByName(String categoryName) throws Exception;

    List<Category> getHotsCategory(List<String> categoryNames) throws Exception;
}
