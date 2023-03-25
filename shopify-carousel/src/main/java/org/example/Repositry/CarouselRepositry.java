package org.example.Repositry;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.example.Entity.Carousel;

import java.util.List;

@Mapper
public interface CarouselRepositry {

    final String FIELDS = "carouselId,imgPath,describes,productId,priority";
    final String findSet = "SELECT " + FIELDS + " FROM Carousel ORDER BY priority DESC LIMIT 6";

    @Select(findSet)
    List<Carousel> list();
}
