package org.example.Clients;

import org.example.Param.ProductHotParam;
import org.example.Utils.Result;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@FeignClient("category-service")
public interface CategoryClient {

    @GetMapping("category/promo/{categoryName}")
    Result getOneByName(@PathVariable String categoryName) throws Exception;

    @PostMapping("category/hots")
    public Result hotsCategory(@RequestBody @Validated ProductHotParam productHotParam) throws Exception;
}
