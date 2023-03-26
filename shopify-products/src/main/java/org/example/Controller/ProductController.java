package org.example.Controller;

import org.example.Param.ProductHotParam;
import org.example.Param.ProductPromoParam;
import org.example.Service.Impl.ProductServiceImpl;
import org.example.Service.ProductService;
import org.example.Utils.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private ProductServiceImpl productService;

    @PostMapping("/promo")
    public Result promo(@RequestBody @Validated ProductPromoParam productPromoParam, BindingResult result) {
        try {
            if (result.hasErrors()) throw new Exception("Incorrect Parameters");

            return Result.ok(
                    "Successfully",
                    productService.getListByCategoryName(productPromoParam.getCategoryName())
            );
        }catch (Exception exception) {
            return Result.fail(exception.getMessage());
        }
    }

    @PostMapping("/hots")
    public Result getHotsProducts(@RequestBody @Validated ProductHotParam productHotParam, BindingResult result) {
        try {
            if (result.hasErrors()) throw new Exception("Incorrect Parameters");

            return Result.ok(
                    "Successfully",
                    productService.getHotsProducts(productHotParam)
            );
        }catch (Exception exception) {
            return Result.fail(exception.getMessage());
        }
    }
}
