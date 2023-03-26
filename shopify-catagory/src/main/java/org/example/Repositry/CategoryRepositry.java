package org.example.Repositry;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.example.Entity.Category;

import java.util.List;

@Mapper
public interface CategoryRepositry {
    final String FIELDS = "categoryId,categoryName";

    final String getOneByName = "SELECT " + FIELDS + " FROM Category WHERE categoryName = #{categoryName}";
    final String getCategorysByHotsName =
            "<script>" +
                " SELECT " + FIELDS + " FROM Category WHERE categoryName IN " +
                    "<foreach collection='categoryNames' item='categoryName' separator=',' close=')' open='('>" +
                        "#{categoryName}" +
                    "</foreach>" +
            "</script>";

    @Select(getOneByName)
    Category getOneByName(String categoryName);

    @Select(getCategorysByHotsName)
    List<Category> getCategorysByHotsName(@Param("categoryNames")List<String> categoryNames);
}
