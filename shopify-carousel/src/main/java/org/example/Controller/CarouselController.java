package org.example.Controller;

import org.example.Entity.Carousel;
import org.example.Service.Impl.CarouselServiceImpl;
import org.example.Utils.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/carousel")
public class CarouselController {

    @Autowired
    private CarouselServiceImpl carouselService;


    @PostMapping("/list")
    public Result list() throws Exception {
        try {
            List<Carousel> list = carouselService.list();
            return Result.ok("Successfully",list);
        }catch (Exception exception) {
            return Result.fail(exception.getMessage());
        }
    }

}
