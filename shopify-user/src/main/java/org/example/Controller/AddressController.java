package org.example.Controller;

import org.example.Entity.Address;
import org.example.Param.AddressListParam;
import org.example.Param.AddressRemoveParam;
import org.example.Service.AddressService;
import org.example.Utils.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/user/address")
public class AddressController {

    @Autowired
    private AddressService addressService;

    @PostMapping("/list")
    @ResponseBody
    public Result list(@RequestBody @Validated AddressListParam addressListParam, BindingResult result) {
        try {
            if (result.hasErrors()) throw new Exception("Parameters Incorrect");

            List<Address> list = addressService.list(addressListParam.getUserId());
            return Result.ok(
                    "Successfully",
                    list
            );
        }catch (Exception exception) {
            return Result.fail(exception.getMessage());
        }
    }

    @PostMapping("/save")
    @ResponseBody
    public Result save(@RequestBody @Validated List<Address> addressList, BindingResult result) {
        try {
            if (result.hasErrors()) throw new Exception("Parameters Incorrect");

            List<Address> list = addressService.save(addressList);
            return Result.ok(
                    "Successfully",
                    list
            );
        }catch (Exception exception) {
            return Result.fail(exception.getMessage());
        }
    }

    @PostMapping("remove")
    @ResponseBody
    public Result remove(@RequestBody @Validated AddressRemoveParam addressRemoveParam, BindingResult result) {
        try {
            if (result.hasErrors()) throw new Exception("Parameters Incorrect");

            addressService.remove(addressRemoveParam.getId());
            return Result.ok("Successfully");
        }catch (Exception exception) {
            return Result.fail(exception.getMessage());
        }
    }
}
