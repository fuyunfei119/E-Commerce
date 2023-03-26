package org.example.Controller;

import com.mysql.cj.util.StringUtils;
import org.example.Param.ProductHotParam;
import org.example.Service.Impl.CategoryServiceImpl;
import org.example.Utils.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/category")
public class CategoryController {

    @Autowired
    private CategoryServiceImpl categoryService;

    @GetMapping("/promo/{categoryName}")
    public Result getOneByName(@PathVariable String categoryName) {
        try {
            if (StringUtils.isNullOrEmpty(categoryName)) throw new Exception("CategoryName must have an value.");

            return Result.ok("Successfully",categoryService.getOneByName(categoryName));
        }catch (Exception exception) {
            return Result.fail(exception.getMessage());
        }
    }

    @PostMapping("/hots")
    public Result hotsCategory(@RequestBody @Validated ProductHotParam productHotParam, BindingResult result) {
        try {
            if (result.hasErrors()) throw new Exception("Incorrect Parameters");

            return Result.ok(
                    "Successfully",
                    categoryService.getHotsCategory(productHotParam.getCategoryNames())
            );
        }catch (Exception exception) {
            return Result.fail(exception.getMessage());
        }
    }
}
