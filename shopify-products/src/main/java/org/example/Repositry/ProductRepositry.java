package org.example.Repositry;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.example.Entity.Product;

import java.util.List;

@Mapper
public interface ProductRepositry {
    final String FIELDS = "productId,productName,categoryId,productTitle,productIntro,productPicture,productPrice,productSellingPrice,productNum,productSales";
    final String getListByCategoryName = "SELECT " + FIELDS + " FROM Product WHERE categoryId = #{categoryId} ORDER BY productSales LIMIT 7";
    final String getHotProducts =
            "<script>" +
                    " SELECT " + FIELDS + " FROM Product WHERE categoryId IN " +
                        "<foreach collection='categoryIds' item='categoryId' separator=',' close=')' open='('>" +
                            "#{categoryId}" +
                        "</foreach>" +
            "</script>";

    @Select(getListByCategoryName)
    List<Product> getListByCategoryName(String categoryId);
    @Select(getHotProducts)
    List<Product> getHotProducts(@Param("categoryIds") List<String> categoryIds);
}
