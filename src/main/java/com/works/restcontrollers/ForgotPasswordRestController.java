package com.works.restcontrollers;

import com.works.dto.ForgotPasswordRestDto;
import com.works.entities.ChangePasswordInterlayer;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.Authorization;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("password")
@Api(value ="ChangePasswordRestController")

public class ForgotPasswordRestController {
    final ForgotPasswordRestDto forgotPasswordRestDto;

    public ForgotPasswordRestController(ForgotPasswordRestDto forgotPasswordRestDto) {
        this.forgotPasswordRestDto = forgotPasswordRestDto;
    }

    @ApiOperation("Şifre Değiştirme")
    @PutMapping("/add/{us_mail}")
    public Map<Object, Object> add(@RequestBody ChangePasswordInterlayer changePasswordInterlayer, @PathVariable String us_mail){
        return forgotPasswordRestDto.forgotpassword(changePasswordInterlayer,us_mail);
    }
}
