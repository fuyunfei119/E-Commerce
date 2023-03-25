package org.example.Service.Impl;

import org.example.Entity.Carousel;
import org.example.Repositry.CarouselRepositry;
import org.example.Service.CarouselService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CarouselServiceImpl implements CarouselService {

    @Autowired
    private CarouselRepositry carouselRepositry;

    @Override
    public List<Carousel> list() throws Exception {
        List<Carousel> carouselList = carouselRepositry.list();
        if (carouselList == null) throw new Exception("Query Failed");
        return carouselList;
    }
}
